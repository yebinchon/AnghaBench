
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t word32 ;
typedef int u8 ;
typedef int WC_RNG ;
typedef int DhKey ;


 scalar_t__ TEST_FAIL () ;
 int os_free (int *) ;
 int * os_malloc (int) ;
 int os_memmove (int *,int *,size_t) ;
 int os_memset (int *,int ,size_t) ;
 scalar_t__ wc_DhGenerateKeyPair (int *,int *,int *,size_t*,int *,size_t*) ;
 scalar_t__ wc_DhSetKey (int *,int const*,size_t,int *,int) ;
 int wc_FreeDhKey (int *) ;
 int wc_FreeRng (int *) ;
 int wc_InitDhKey (int *) ;
 scalar_t__ wc_InitRng (int *) ;

int crypto_dh_init(u8 generator, const u8 *prime, size_t prime_len, u8 *privkey,
     u8 *pubkey)
{
 int ret = -1;
 WC_RNG rng;
 DhKey *dh = ((void*)0);
 word32 priv_sz, pub_sz;

 if (TEST_FAIL())
  return -1;

 dh = os_malloc(sizeof(DhKey));
 if (!dh)
  return -1;
 wc_InitDhKey(dh);

 if (wc_InitRng(&rng) != 0) {
  os_free(dh);
  return -1;
 }

 if (wc_DhSetKey(dh, prime, prime_len, &generator, 1) != 0)
  goto done;

 if (wc_DhGenerateKeyPair(dh, &rng, privkey, &priv_sz, pubkey, &pub_sz)
     != 0)
  goto done;

 if (priv_sz < prime_len) {
  size_t pad_sz = prime_len - priv_sz;

  os_memmove(privkey + pad_sz, privkey, priv_sz);
  os_memset(privkey, 0, pad_sz);
 }

 if (pub_sz < prime_len) {
  size_t pad_sz = prime_len - pub_sz;

  os_memmove(pubkey + pad_sz, pubkey, pub_sz);
  os_memset(pubkey, 0, pad_sz);
 }
 ret = 0;
done:
 wc_FreeDhKey(dh);
 os_free(dh);
 wc_FreeRng(&rng);
 return ret;
}
