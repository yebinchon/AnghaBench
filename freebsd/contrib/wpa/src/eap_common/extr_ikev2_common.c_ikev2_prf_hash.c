
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;




 int hmac_md5_vector (int const*,size_t,size_t,int const**,size_t const*,int *) ;
 int hmac_sha1_vector (int const*,size_t,size_t,int const**,size_t const*,int *) ;

int ikev2_prf_hash(int alg, const u8 *key, size_t key_len,
     size_t num_elem, const u8 *addr[], const size_t *len,
     u8 *hash)
{
 switch (alg) {
 case 128:
  return hmac_sha1_vector(key, key_len, num_elem, addr, len,
     hash);
 case 129:
  return hmac_md5_vector(key, key_len, num_elem, addr, len, hash);
 default:
  return -1;
 }
}
