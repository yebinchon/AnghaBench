
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int pem_password_cb ;
struct TYPE_7__ {TYPE_1__* ameth; } ;
struct TYPE_6__ {int * priv_encode; } ;
typedef TYPE_2__ EVP_PKEY ;
typedef int EVP_CIPHER ;
typedef int BIO ;


 int PEM_write_bio_PKCS8PrivateKey (int *,TYPE_2__*,int const*,char*,int,int *,void*) ;
 int PEM_write_bio_PrivateKey_traditional (int *,TYPE_2__*,int const*,unsigned char*,int,int *,void*) ;

int PEM_write_bio_PrivateKey(BIO *bp, EVP_PKEY *x, const EVP_CIPHER *enc,
                             unsigned char *kstr, int klen,
                             pem_password_cb *cb, void *u)
{
    if (x->ameth == ((void*)0) || x->ameth->priv_encode != ((void*)0))
        return PEM_write_bio_PKCS8PrivateKey(bp, x, enc,
                                             (char *)kstr, klen, cb, u);
    return PEM_write_bio_PrivateKey_traditional(bp, x, enc, kstr, klen, cb, u);
}
