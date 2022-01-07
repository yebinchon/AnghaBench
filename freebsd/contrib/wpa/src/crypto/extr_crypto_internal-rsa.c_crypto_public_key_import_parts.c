
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_public_key {int dummy; } ;


 scalar_t__ crypto_rsa_import_public_key_parts (int const*,size_t,int const*,size_t) ;

struct crypto_public_key *
crypto_public_key_import_parts(const u8 *n, size_t n_len,
          const u8 *e, size_t e_len)
{
 return (struct crypto_public_key *)
  crypto_rsa_import_public_key_parts(n, n_len, e, e_len);
}
