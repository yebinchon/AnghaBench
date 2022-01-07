
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int HMAC_CTX ;
typedef int EVP_MD ;


 int HMAC_CTX_free (int *) ;
 int * HMAC_CTX_new () ;
 int HMAC_Final (int *,int *,unsigned int*) ;
 int HMAC_Init_ex (int *,int const*,size_t,int const*,int *) ;
 int HMAC_Update (int *,int const*,size_t const) ;
 scalar_t__ TEST_FAIL () ;

__attribute__((used)) static int openssl_hmac_vector(const EVP_MD *type, const u8 *key,
          size_t key_len, size_t num_elem,
          const u8 *addr[], const size_t *len, u8 *mac,
          unsigned int mdlen)
{
 HMAC_CTX *ctx;
 size_t i;
 int res;

 if (TEST_FAIL())
  return -1;

 ctx = HMAC_CTX_new();
 if (!ctx)
  return -1;
 res = HMAC_Init_ex(ctx, key, key_len, type, ((void*)0));
 if (res != 1)
  goto done;

 for (i = 0; i < num_elem; i++)
  HMAC_Update(ctx, addr[i], len[i]);

 res = HMAC_Final(ctx, mac, &mdlen);
done:
 HMAC_CTX_free(ctx);

 return res == 1 ? 0 : -1;
}
