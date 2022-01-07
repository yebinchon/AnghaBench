
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_private_key {int dummy; } ;


 int MSG_DEBUG ;
 scalar_t__ crypto_rsa_import_private_key (int const*,size_t) ;
 struct crypto_private_key* pkcs8_enc_key_import (int const*,size_t,char const*) ;
 struct crypto_private_key* pkcs8_key_import (int const*,size_t) ;
 int wpa_printf (int ,char*) ;

struct crypto_private_key * crypto_private_key_import(const u8 *key,
            size_t len,
            const char *passwd)
{
 struct crypto_private_key *res;


 res = pkcs8_key_import(key, len);
 if (res)
  return res;

 if (passwd) {

  res = pkcs8_enc_key_import(key, len, passwd);
  if (res)
   return res;
 }


 wpa_printf(MSG_DEBUG, "Trying to parse PKCS #1 encoded RSA private "
     "key");
 return (struct crypto_private_key *)
  crypto_rsa_import_private_key(key, len);
}
