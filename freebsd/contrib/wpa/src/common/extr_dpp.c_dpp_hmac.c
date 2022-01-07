
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int hmac_sha256 (int const*,size_t,int const*,size_t,int *) ;
 int hmac_sha384 (int const*,size_t,int const*,size_t,int *) ;
 int hmac_sha512 (int const*,size_t,int const*,size_t,int *) ;

__attribute__((used)) static int dpp_hmac(size_t hash_len, const u8 *key, size_t key_len,
      const u8 *data, size_t data_len, u8 *mac)
{
 if (hash_len == 32)
  return hmac_sha256(key, key_len, data, data_len, mac);
 if (hash_len == 48)
  return hmac_sha384(key, key_len, data, data_len, mac);
 if (hash_len == 64)
  return hmac_sha512(key, key_len, data, data_len, mac);
 return -1;
}
