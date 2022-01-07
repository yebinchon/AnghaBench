
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HMAC_CTX ;


 int HMAC_CTX_cleanup (int *) ;
 int bin_clear_free (int *,int) ;

__attribute__((used)) static void HMAC_CTX_free(HMAC_CTX *ctx)
{
 if (!ctx)
  return;
 HMAC_CTX_cleanup(ctx);
 bin_clear_free(ctx, sizeof(*ctx));
}
