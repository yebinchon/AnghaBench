
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ikev2_prf_alg {size_t hash_len; } ;


 int IKEV2_MAX_HASH_LEN ;
 struct ikev2_prf_alg* ikev2_get_prf (int) ;
 int ikev2_prf_hash (int,int const*,size_t,int,int const**,size_t*,int*) ;
 int os_memcpy (int*,int*,size_t) ;

int ikev2_prf_plus(int alg, const u8 *key, size_t key_len,
     const u8 *data, size_t data_len,
     u8 *out, size_t out_len)
{
 u8 hash[IKEV2_MAX_HASH_LEN];
 size_t hash_len;
 u8 iter, *pos, *end;
 const u8 *addr[3];
 size_t len[3];
 const struct ikev2_prf_alg *prf;
 int res;

 prf = ikev2_get_prf(alg);
 if (prf == ((void*)0))
  return -1;
 hash_len = prf->hash_len;

 addr[0] = hash;
 len[0] = hash_len;
 addr[1] = data;
 len[1] = data_len;
 addr[2] = &iter;
 len[2] = 1;

 pos = out;
 end = out + out_len;
 iter = 1;
 while (pos < end) {
  size_t clen;
  if (iter == 1)
   res = ikev2_prf_hash(alg, key, key_len, 2, &addr[1],
          &len[1], hash);
  else
   res = ikev2_prf_hash(alg, key, key_len, 3, addr, len,
          hash);
  if (res < 0)
   return -1;
  clen = hash_len;
  if ((int) clen > end - pos)
   clen = end - pos;
  os_memcpy(pos, hash, clen);
  pos += clen;
  iter++;
 }

 return 0;
}
