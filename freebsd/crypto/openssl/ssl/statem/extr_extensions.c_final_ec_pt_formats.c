
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ ecpointformats_len; unsigned char* peer_ecpointformats; scalar_t__ peer_ecpointformats_len; int * ecpointformats; } ;
struct TYPE_12__ {TYPE_4__ ext; TYPE_3__* s3; scalar_t__ server; } ;
struct TYPE_9__ {TYPE_1__* new_cipher; } ;
struct TYPE_10__ {TYPE_2__ tmp; } ;
struct TYPE_8__ {unsigned long algorithm_mkey; unsigned long algorithm_auth; } ;
typedef TYPE_5__ SSL ;


 int SSL_AD_ILLEGAL_PARAMETER ;
 int SSL_F_FINAL_EC_PT_FORMATS ;
 int SSL_R_TLS_INVALID_ECPOINTFORMAT_LIST ;
 unsigned long SSL_aECDSA ;
 unsigned long SSL_kECDHE ;
 int SSLfatal (TYPE_5__*,int ,int ,int ) ;
 int TLSEXT_ECPOINTFORMAT_uncompressed ;

__attribute__((used)) static int final_ec_pt_formats(SSL *s, unsigned int context, int sent)
{
    unsigned long alg_k, alg_a;

    if (s->server)
        return 1;

    alg_k = s->s3->tmp.new_cipher->algorithm_mkey;
    alg_a = s->s3->tmp.new_cipher->algorithm_auth;






    if (s->ext.ecpointformats != ((void*)0)
            && s->ext.ecpointformats_len > 0
            && s->ext.peer_ecpointformats != ((void*)0)
            && s->ext.peer_ecpointformats_len > 0
            && ((alg_k & SSL_kECDHE) || (alg_a & SSL_aECDSA))) {

        size_t i;
        unsigned char *list = s->ext.peer_ecpointformats;

        for (i = 0; i < s->ext.peer_ecpointformats_len; i++) {
            if (*list++ == TLSEXT_ECPOINTFORMAT_uncompressed)
                break;
        }
        if (i == s->ext.peer_ecpointformats_len) {
            SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_FINAL_EC_PT_FORMATS,
                     SSL_R_TLS_INVALID_ECPOINTFORMAT_LIST);
            return 0;
        }
    }

    return 1;
}
