
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD_CTX ;
typedef int BIO ;


 int BIO_set_data (int *,int *) ;
 int BIO_set_init (int *,int) ;
 int * EVP_MD_CTX_new () ;

__attribute__((used)) static int md_new(BIO *bi)
{
    EVP_MD_CTX *ctx;

    ctx = EVP_MD_CTX_new();
    if (ctx == ((void*)0))
        return 0;

    BIO_set_init(bi, 1);
    BIO_set_data(bi, ctx);

    return 1;
}
