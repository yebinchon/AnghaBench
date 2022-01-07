
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_6__ {int peer_supportedgroups_len; int * peer_supportedgroups; } ;
struct TYPE_7__ {TYPE_1__ ext; int hit; } ;
typedef TYPE_2__ SSL ;
typedef int PACKET ;


 int ERR_R_INTERNAL_ERROR ;
 int OPENSSL_free (int *) ;
 int PACKET_as_length_prefixed_2 (int *,int *) ;
 int PACKET_remaining (int *) ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_PARSE_CTOS_SUPPORTED_GROUPS ;
 scalar_t__ SSL_IS_TLS13 (TYPE_2__*) ;
 int SSL_R_BAD_EXTENSION ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;
 int tls1_save_u16 (int *,int **,int *) ;

int tls_parse_ctos_supported_groups(SSL *s, PACKET *pkt, unsigned int context,
                                    X509 *x, size_t chainidx)
{
    PACKET supported_groups_list;


    if (!PACKET_as_length_prefixed_2(pkt, &supported_groups_list)
            || PACKET_remaining(&supported_groups_list) == 0
            || (PACKET_remaining(&supported_groups_list) % 2) != 0) {
        SSLfatal(s, SSL_AD_DECODE_ERROR,
                 SSL_F_TLS_PARSE_CTOS_SUPPORTED_GROUPS, SSL_R_BAD_EXTENSION);
        return 0;
    }

    if (!s->hit || SSL_IS_TLS13(s)) {
        OPENSSL_free(s->ext.peer_supportedgroups);
        s->ext.peer_supportedgroups = ((void*)0);
        s->ext.peer_supportedgroups_len = 0;
        if (!tls1_save_u16(&supported_groups_list,
                           &s->ext.peer_supportedgroups,
                           &s->ext.peer_supportedgroups_len)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_PARSE_CTOS_SUPPORTED_GROUPS,
                     ERR_R_INTERNAL_ERROR);
            return 0;
        }
    }

    return 1;
}
