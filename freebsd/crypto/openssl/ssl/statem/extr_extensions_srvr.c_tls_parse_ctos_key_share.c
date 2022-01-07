
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint16_t ;
typedef int X509 ;
struct TYPE_9__ {int psk_kex_mode; } ;
struct TYPE_11__ {TYPE_2__* s3; TYPE_1__ ext; scalar_t__ hit; } ;
struct TYPE_10__ {unsigned int group_id; int * peer_tmp; } ;
typedef TYPE_3__ SSL ;
typedef int PACKET ;


 int ERR_R_INTERNAL_ERROR ;
 int EVP_PKEY_set1_tls_encodedpoint (int *,int ,scalar_t__) ;
 int PACKET_as_length_prefixed_2 (int *,int *) ;
 int PACKET_data (int *) ;
 int PACKET_get_length_prefixed_2 (int *,int *) ;
 int PACKET_get_net_2 (int *,unsigned int*) ;
 scalar_t__ PACKET_remaining (int *) ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_ILLEGAL_PARAMETER ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_AD_MISSING_EXTENSION ;
 int SSL_F_TLS_PARSE_CTOS_KEY_SHARE ;
 int SSL_R_BAD_ECPOINT ;
 int SSL_R_BAD_KEY_SHARE ;
 int SSL_R_LENGTH_MISMATCH ;
 int SSL_R_MISSING_SUPPORTED_GROUPS_EXTENSION ;
 int SSL_R_UNABLE_TO_FIND_ECDH_PARAMETERS ;
 int SSLfatal (TYPE_3__*,int ,int ,int ) ;
 int TLSEXT_KEX_MODE_FLAG_KE_DHE ;
 int check_in_list (TYPE_3__*,unsigned int,int const*,size_t,int) ;
 int * ssl_generate_param_group (unsigned int) ;
 int tls1_get_peer_groups (TYPE_3__*,int const**,size_t*) ;
 int tls1_get_supported_groups (TYPE_3__*,int const**,size_t*) ;

int tls_parse_ctos_key_share(SSL *s, PACKET *pkt, unsigned int context, X509 *x,
                             size_t chainidx)
{

    unsigned int group_id;
    PACKET key_share_list, encoded_pt;
    const uint16_t *clntgroups, *srvrgroups;
    size_t clnt_num_groups, srvr_num_groups;
    int found = 0;

    if (s->hit && (s->ext.psk_kex_mode & TLSEXT_KEX_MODE_FLAG_KE_DHE) == 0)
        return 1;


    if (s->s3->peer_tmp != ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PARSE_CTOS_KEY_SHARE,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    if (!PACKET_as_length_prefixed_2(pkt, &key_share_list)) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_CTOS_KEY_SHARE,
                 SSL_R_LENGTH_MISMATCH);
        return 0;
    }


    tls1_get_supported_groups(s, &srvrgroups, &srvr_num_groups);

    tls1_get_peer_groups(s, &clntgroups, &clnt_num_groups);
    if (clnt_num_groups == 0) {





        SSLfatal(s, SSL_AD_MISSING_EXTENSION, SSL_F_TLS_PARSE_CTOS_KEY_SHARE,
                 SSL_R_MISSING_SUPPORTED_GROUPS_EXTENSION);
        return 0;
    }

    if (s->s3->group_id != 0 && PACKET_remaining(&key_share_list) == 0) {





        SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS_PARSE_CTOS_KEY_SHARE,
                 SSL_R_BAD_KEY_SHARE);
        return 0;
    }

    while (PACKET_remaining(&key_share_list) > 0) {
        if (!PACKET_get_net_2(&key_share_list, &group_id)
                || !PACKET_get_length_prefixed_2(&key_share_list, &encoded_pt)
                || PACKET_remaining(&encoded_pt) == 0) {
            SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_CTOS_KEY_SHARE,
                     SSL_R_LENGTH_MISMATCH);
            return 0;
        }





        if (found)
            continue;





        if (s->s3->group_id != 0
                && (group_id != s->s3->group_id
                    || PACKET_remaining(&key_share_list) != 0)) {
            SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER,
                     SSL_F_TLS_PARSE_CTOS_KEY_SHARE, SSL_R_BAD_KEY_SHARE);
            return 0;
        }


        if (!check_in_list(s, group_id, clntgroups, clnt_num_groups, 0)) {
            SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER,
                     SSL_F_TLS_PARSE_CTOS_KEY_SHARE, SSL_R_BAD_KEY_SHARE);
            return 0;
        }


        if (!check_in_list(s, group_id, srvrgroups, srvr_num_groups, 1)) {

            continue;
        }

        if ((s->s3->peer_tmp = ssl_generate_param_group(group_id)) == ((void*)0)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PARSE_CTOS_KEY_SHARE,
                   SSL_R_UNABLE_TO_FIND_ECDH_PARAMETERS);
            return 0;
        }

        s->s3->group_id = group_id;

        if (!EVP_PKEY_set1_tls_encodedpoint(s->s3->peer_tmp,
                PACKET_data(&encoded_pt),
                PACKET_remaining(&encoded_pt))) {
            SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER,
                     SSL_F_TLS_PARSE_CTOS_KEY_SHARE, SSL_R_BAD_ECPOINT);
            return 0;
        }

        found = 1;
    }


    return 1;
}
