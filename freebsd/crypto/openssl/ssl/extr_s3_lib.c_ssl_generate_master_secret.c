
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ server; TYPE_6__* s3; TYPE_4__* session; TYPE_3__* method; } ;
struct TYPE_15__ {size_t psklen; unsigned char* psk; int * pms; TYPE_1__* new_cipher; } ;
struct TYPE_16__ {TYPE_5__ tmp; } ;
struct TYPE_14__ {int master_key_length; int master_key; } ;
struct TYPE_13__ {TYPE_2__* ssl3_enc; } ;
struct TYPE_12__ {int (* generate_master_secret ) (TYPE_7__*,int ,unsigned char*,size_t,int *) ;} ;
struct TYPE_11__ {unsigned long algorithm_mkey; } ;
typedef TYPE_7__ SSL ;


 int OPENSSL_cleanse (unsigned char*,size_t) ;
 int OPENSSL_clear_free (unsigned char*,size_t) ;
 unsigned char* OPENSSL_malloc (size_t) ;
 unsigned long SSL_PSK ;
 unsigned long SSL_kPSK ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;
 int memset (unsigned char*,int ,size_t) ;
 int s2n (size_t,unsigned char*) ;
 int stub1 (TYPE_7__*,int ,unsigned char*,size_t,int *) ;
 int stub2 (TYPE_7__*,int ,unsigned char*,size_t,int *) ;

int ssl_generate_master_secret(SSL *s, unsigned char *pms, size_t pmslen,
                               int free_pms)
{
    unsigned long alg_k = s->s3->tmp.new_cipher->algorithm_mkey;
    int ret = 0;

    if (alg_k & SSL_PSK) {

        unsigned char *pskpms, *t;
        size_t psklen = s->s3->tmp.psklen;
        size_t pskpmslen;




        if (alg_k & SSL_kPSK)
            pmslen = psklen;

        pskpmslen = 4 + pmslen + psklen;
        pskpms = OPENSSL_malloc(pskpmslen);
        if (pskpms == ((void*)0))
            goto err;
        t = pskpms;
        s2n(pmslen, t);
        if (alg_k & SSL_kPSK)
            memset(t, 0, pmslen);
        else
            memcpy(t, pms, pmslen);
        t += pmslen;
        s2n(psklen, t);
        memcpy(t, s->s3->tmp.psk, psklen);

        OPENSSL_clear_free(s->s3->tmp.psk, psklen);
        s->s3->tmp.psk = ((void*)0);
        if (!s->method->ssl3_enc->generate_master_secret(s,
                    s->session->master_key,pskpms, pskpmslen,
                    &s->session->master_key_length)) {
            OPENSSL_clear_free(pskpms, pskpmslen);

            goto err;
        }
        OPENSSL_clear_free(pskpms, pskpmslen);




    } else {
        if (!s->method->ssl3_enc->generate_master_secret(s,
                s->session->master_key, pms, pmslen,
                &s->session->master_key_length)) {

            goto err;
        }
    }

    ret = 1;
 err:
    if (pms) {
        if (free_pms)
            OPENSSL_clear_free(pms, pmslen);
        else
            OPENSSL_cleanse(pms, pmslen);
    }
    if (s->server == 0)
        s->s3->tmp.pms = ((void*)0);
    return ret;
}
