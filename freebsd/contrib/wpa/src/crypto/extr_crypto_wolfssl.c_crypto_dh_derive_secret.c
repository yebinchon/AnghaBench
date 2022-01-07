
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t word32 ;
typedef int u8 ;
typedef int DhKey ;


 int os_free (int *) ;
 int * os_malloc (int) ;
 scalar_t__ wc_DhAgree (int *,int *,size_t*,int const*,size_t,int const*,size_t) ;
 scalar_t__ wc_DhSetKey (int *,int const*,size_t,int *,int) ;
 int wc_FreeDhKey (int *) ;
 int wc_InitDhKey (int *) ;

int crypto_dh_derive_secret(u8 generator, const u8 *prime, size_t prime_len,
       const u8 *order, size_t order_len,
       const u8 *privkey, size_t privkey_len,
       const u8 *pubkey, size_t pubkey_len,
       u8 *secret, size_t *len)
{
 int ret = -1;
 DhKey *dh;
 word32 secret_sz;

 dh = os_malloc(sizeof(DhKey));
 if (!dh)
  return -1;
 wc_InitDhKey(dh);

 if (wc_DhSetKey(dh, prime, prime_len, &generator, 1) != 0)
  goto done;

 if (wc_DhAgree(dh, secret, &secret_sz, privkey, privkey_len, pubkey,
         pubkey_len) != 0)
  goto done;

 *len = secret_sz;
 ret = 0;
done:
 wc_FreeDhKey(dh);
 os_free(dh);
 return ret;
}
