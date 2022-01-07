
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int linux_af_alg_hash_vector (char*,int const*,size_t,size_t,int const**,size_t const*,int *,int) ;

int hmac_md5_vector(const u8 *key, size_t key_len, size_t num_elem,
      const u8 *addr[], const size_t *len, u8 *mac)
{
 return linux_af_alg_hash_vector("hmac(md5)", key, key_len, num_elem,
     addr, len, mac, 16);
}
