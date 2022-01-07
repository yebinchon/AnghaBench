
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* pkeys; TYPE_1__* key; } ;
struct TYPE_4__ {int * privatekey; int * x509; } ;
typedef int EVP_PKEY ;
typedef TYPE_2__ CERT ;


 int ERR_R_MALLOC_FAILURE ;
 int ERR_clear_error () ;
 scalar_t__ EVP_PKEY_RSA ;
 int EVP_PKEY_copy_parameters (int *,int *) ;
 int EVP_PKEY_free (int *) ;
 int EVP_PKEY_get0_RSA (int *) ;
 scalar_t__ EVP_PKEY_id (int *) ;
 int EVP_PKEY_up_ref (int *) ;
 int RSA_METHOD_FLAG_NO_CHECK ;
 int RSA_flags (int ) ;
 int SSL_F_SSL_SET_PKEY ;
 int SSL_R_UNKNOWN_CERTIFICATE_TYPE ;
 int SSLerr (int ,int ) ;
 int X509_check_private_key (int *,int *) ;
 int X509_free (int *) ;
 int * X509_get0_pubkey (int *) ;
 int * ssl_cert_lookup_by_pkey (int *,size_t*) ;

__attribute__((used)) static int ssl_set_pkey(CERT *c, EVP_PKEY *pkey)
{
    size_t i;

    if (ssl_cert_lookup_by_pkey(pkey, &i) == ((void*)0)) {
        SSLerr(SSL_F_SSL_SET_PKEY, SSL_R_UNKNOWN_CERTIFICATE_TYPE);
        return 0;
    }

    if (c->pkeys[i].x509 != ((void*)0)) {
        EVP_PKEY *pktmp;
        pktmp = X509_get0_pubkey(c->pkeys[i].x509);
        if (pktmp == ((void*)0)) {
            SSLerr(SSL_F_SSL_SET_PKEY, ERR_R_MALLOC_FAILURE);
            return 0;
        }




        EVP_PKEY_copy_parameters(pktmp, pkey);
        ERR_clear_error();






        if (EVP_PKEY_id(pkey) == EVP_PKEY_RSA
            && RSA_flags(EVP_PKEY_get0_RSA(pkey)) & RSA_METHOD_FLAG_NO_CHECK) ;
        else

        if (!X509_check_private_key(c->pkeys[i].x509, pkey)) {
            X509_free(c->pkeys[i].x509);
            c->pkeys[i].x509 = ((void*)0);
            return 0;
        }
    }

    EVP_PKEY_free(c->pkeys[i].privatekey);
    EVP_PKEY_up_ref(pkey);
    c->pkeys[i].privatekey = pkey;
    c->key = &c->pkeys[i];
    return 1;
}
