
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD_CTX ;


 int EVP_MD_CTX_init (int *) ;
 int * os_zalloc (int) ;

__attribute__((used)) static EVP_MD_CTX * EVP_MD_CTX_new(void)
{
 EVP_MD_CTX *ctx;

 ctx = os_zalloc(sizeof(*ctx));
 if (ctx)
  EVP_MD_CTX_init(ctx);
 return ctx;
}
