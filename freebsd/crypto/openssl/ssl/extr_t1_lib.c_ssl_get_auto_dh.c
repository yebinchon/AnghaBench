
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {TYPE_5__* s3; TYPE_1__* cert; } ;
struct TYPE_11__ {TYPE_3__* cert; TYPE_2__* new_cipher; } ;
struct TYPE_12__ {TYPE_4__ tmp; } ;
struct TYPE_10__ {int privatekey; } ;
struct TYPE_9__ {int algorithm_auth; int strength_bits; } ;
struct TYPE_8__ {int dh_tmp_auto; } ;
typedef TYPE_6__ SSL ;
typedef int DH ;
typedef int BIGNUM ;


 int BN_free (int *) ;
 int * BN_get_rfc3526_prime_3072 (int *) ;
 int * BN_get_rfc3526_prime_8192 (int *) ;
 int * BN_new () ;
 int BN_set_word (int *,int) ;
 int DH_free (int *) ;
 int * DH_get_1024_160 () ;
 int * DH_get_2048_224 () ;
 int * DH_new () ;
 int DH_set0_pqg (int *,int *,int *,int *) ;
 int EVP_PKEY_security_bits (int ) ;
 int SSL_aNULL ;
 int SSL_aPSK ;

DH *ssl_get_auto_dh(SSL *s)
{
    int dh_secbits = 80;
    if (s->cert->dh_tmp_auto == 2)
        return DH_get_1024_160();
    if (s->s3->tmp.new_cipher->algorithm_auth & (SSL_aNULL | SSL_aPSK)) {
        if (s->s3->tmp.new_cipher->strength_bits == 256)
            dh_secbits = 128;
        else
            dh_secbits = 80;
    } else {
        if (s->s3->tmp.cert == ((void*)0))
            return ((void*)0);
        dh_secbits = EVP_PKEY_security_bits(s->s3->tmp.cert->privatekey);
    }

    if (dh_secbits >= 128) {
        DH *dhp = DH_new();
        BIGNUM *p, *g;
        if (dhp == ((void*)0))
            return ((void*)0);
        g = BN_new();
        if (g == ((void*)0) || !BN_set_word(g, 2)) {
            DH_free(dhp);
            BN_free(g);
            return ((void*)0);
        }
        if (dh_secbits >= 192)
            p = BN_get_rfc3526_prime_8192(((void*)0));
        else
            p = BN_get_rfc3526_prime_3072(((void*)0));
        if (p == ((void*)0) || !DH_set0_pqg(dhp, p, ((void*)0), g)) {
            DH_free(dhp);
            BN_free(p);
            BN_free(g);
            return ((void*)0);
        }
        return dhp;
    }
    if (dh_secbits >= 112)
        return DH_get_2048_224();
    return DH_get_1024_160();
}
