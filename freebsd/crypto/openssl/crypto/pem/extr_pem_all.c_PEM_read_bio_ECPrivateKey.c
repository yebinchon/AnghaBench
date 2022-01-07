
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pem_password_cb ;
typedef int EVP_PKEY ;
typedef int EC_KEY ;
typedef int BIO ;


 int * PEM_read_bio_PrivateKey (int *,int *,int *,void*) ;
 int * pkey_get_eckey (int *,int **) ;

EC_KEY *PEM_read_bio_ECPrivateKey(BIO *bp, EC_KEY **key, pem_password_cb *cb,
                                  void *u)
{
    EVP_PKEY *pktmp;
    pktmp = PEM_read_bio_PrivateKey(bp, ((void*)0), cb, u);
    return pkey_get_eckey(pktmp, key);
}
