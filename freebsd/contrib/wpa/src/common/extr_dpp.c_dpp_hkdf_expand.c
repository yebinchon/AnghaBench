
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int hmac_sha256_kdf (int const*,size_t,int *,int const*,int ,int *,size_t) ;
 int hmac_sha384_kdf (int const*,size_t,int *,int const*,int ,int *,size_t) ;
 int hmac_sha512_kdf (int const*,size_t,int *,int const*,int ,int *,size_t) ;
 int os_strlen (char const*) ;

__attribute__((used)) static int dpp_hkdf_expand(size_t hash_len, const u8 *secret, size_t secret_len,
      const char *label, u8 *out, size_t outlen)
{
 if (hash_len == 32)
  return hmac_sha256_kdf(secret, secret_len, ((void*)0),
           (const u8 *) label, os_strlen(label),
           out, outlen);
 if (hash_len == 48)
  return hmac_sha384_kdf(secret, secret_len, ((void*)0),
           (const u8 *) label, os_strlen(label),
           out, outlen);
 if (hash_len == 64)
  return hmac_sha512_kdf(secret, secret_len, ((void*)0),
           (const u8 *) label, os_strlen(label),
           out, outlen);
 return -1;
}
