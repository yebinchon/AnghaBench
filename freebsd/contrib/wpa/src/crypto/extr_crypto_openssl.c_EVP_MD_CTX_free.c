
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD_CTX ;


 int EVP_MD_CTX_cleanup (int *) ;
 int bin_clear_free (int *,int) ;

__attribute__((used)) static void EVP_MD_CTX_free(EVP_MD_CTX *ctx)
{
 if (!ctx)
  return;
 EVP_MD_CTX_cleanup(ctx);
 bin_clear_free(ctx, sizeof(*ctx));
}
