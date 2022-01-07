
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_7__ {scalar_t__ max_early_data; } ;
struct TYPE_10__ {int early_secret; TYPE_1__ ext; } ;
struct TYPE_8__ {int tick_identity; scalar_t__ early_data_ok; } ;
struct TYPE_9__ {int hit; scalar_t__ early_data_state; TYPE_2__ ext; TYPE_6__* psksession; TYPE_6__* session; int early_secret; } ;
typedef TYPE_3__ SSL ;
typedef int PACKET ;


 int ERR_R_INTERNAL_ERROR ;
 int EVP_MAX_MD_SIZE ;
 int PACKET_get_net_2 (int *,unsigned int*) ;
 scalar_t__ PACKET_remaining (int *) ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_ILLEGAL_PARAMETER ;
 int SSL_AD_INTERNAL_ERROR ;
 scalar_t__ SSL_EARLY_DATA_FINISHED_WRITING ;
 scalar_t__ SSL_EARLY_DATA_WRITE_RETRY ;
 int SSL_F_TLS_PARSE_STOC_PSK ;
 int SSL_R_BAD_PSK_IDENTITY ;
 int SSL_R_LENGTH_MISMATCH ;
 int SSL_SESSION_free (TYPE_6__*) ;
 int SSLfatal (TYPE_3__*,int ,int ,int ) ;
 int memcpy (int ,int ,int ) ;

int tls_parse_stoc_psk(SSL *s, PACKET *pkt, unsigned int context, X509 *x,
                       size_t chainidx)
{

    unsigned int identity;

    if (!PACKET_get_net_2(pkt, &identity) || PACKET_remaining(pkt) != 0) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_STOC_PSK,
                 SSL_R_LENGTH_MISMATCH);
        return 0;
    }

    if (identity >= (unsigned int)s->ext.tick_identity) {
        SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS_PARSE_STOC_PSK,
                 SSL_R_BAD_PSK_IDENTITY);
        return 0;
    }






    if (identity == 0 && (s->psksession == ((void*)0) || s->ext.tick_identity == 2)) {
        s->hit = 1;
        SSL_SESSION_free(s->psksession);
        s->psksession = ((void*)0);
        return 1;
    }

    if (s->psksession == ((void*)0)) {

        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PARSE_STOC_PSK,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }






    if ((s->early_data_state != SSL_EARLY_DATA_WRITE_RETRY
                && s->early_data_state != SSL_EARLY_DATA_FINISHED_WRITING)
            || s->session->ext.max_early_data > 0
            || s->psksession->ext.max_early_data == 0)
        memcpy(s->early_secret, s->psksession->early_secret, EVP_MAX_MD_SIZE);

    SSL_SESSION_free(s->session);
    s->session = s->psksession;
    s->psksession = ((void*)0);
    s->hit = 1;

    if (identity != 0)
        s->ext.early_data_ok = 0;


    return 1;
}
