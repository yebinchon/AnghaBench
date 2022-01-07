
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int X509 ;
struct TYPE_7__ {int * scts; scalar_t__ scts_len; } ;
struct TYPE_9__ {TYPE_2__* cert; TYPE_1__ ext; int * ct_validation_callback; } ;
struct TYPE_8__ {int custext; } ;
typedef TYPE_3__ SSL ;
typedef int PACKET ;
typedef int ENDPOINT ;


 int ENDPOINT_BOTH ;
 int ENDPOINT_CLIENT ;
 int ERR_R_INTERNAL_ERROR ;
 int OPENSSL_free (int *) ;
 int * OPENSSL_malloc (size_t) ;
 int PACKET_copy_bytes (int *,int *,size_t) ;
 int PACKET_data (int *) ;
 size_t PACKET_remaining (int *) ;
 int SSL_AD_INTERNAL_ERROR ;
 unsigned int SSL_EXT_TLS1_2_SERVER_HELLO ;
 unsigned int SSL_EXT_TLS1_3_CERTIFICATE_REQUEST ;
 int SSL_F_TLS_PARSE_STOC_SCT ;
 int SSL_R_BAD_EXTENSION ;
 int SSLfatal (TYPE_3__*,int ,int ,int ) ;
 int TLS1_AD_UNSUPPORTED_EXTENSION ;
 int TLSEXT_TYPE_signed_certificate_timestamp ;
 int * custom_ext_find (int *,int ,int ,int *) ;
 int custom_ext_parse (TYPE_3__*,unsigned int,int ,int ,size_t,int *,size_t) ;

int tls_parse_stoc_sct(SSL *s, PACKET *pkt, unsigned int context, X509 *x,
                       size_t chainidx)
{
    if (context == SSL_EXT_TLS1_3_CERTIFICATE_REQUEST) {


        return 1;
    }






    if (s->ct_validation_callback != ((void*)0)) {
        size_t size = PACKET_remaining(pkt);


        OPENSSL_free(s->ext.scts);
        s->ext.scts = ((void*)0);

        s->ext.scts_len = (uint16_t)size;
        if (size > 0) {
            s->ext.scts = OPENSSL_malloc(size);
            if (s->ext.scts == ((void*)0)
                    || !PACKET_copy_bytes(pkt, s->ext.scts, size)) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PARSE_STOC_SCT,
                         ERR_R_INTERNAL_ERROR);
                return 0;
            }
        }
    } else {
        ENDPOINT role = (context & SSL_EXT_TLS1_2_SERVER_HELLO) != 0
                        ? ENDPOINT_CLIENT : ENDPOINT_BOTH;





        if (custom_ext_find(&s->cert->custext, role,
                            TLSEXT_TYPE_signed_certificate_timestamp,
                            ((void*)0)) == ((void*)0)) {
            SSLfatal(s, TLS1_AD_UNSUPPORTED_EXTENSION, SSL_F_TLS_PARSE_STOC_SCT,
                     SSL_R_BAD_EXTENSION);
            return 0;
        }

        if (!custom_ext_parse(s, context,
                             TLSEXT_TYPE_signed_certificate_timestamp,
                             PACKET_data(pkt), PACKET_remaining(pkt),
                             x, chainidx)) {

            return 0;
        }
    }

    return 1;
}
