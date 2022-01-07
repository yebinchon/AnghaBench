
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ type; } ;
struct crypto_private_key {TYPE_1__ rsa; } ;


 int CRYPT_OK ;
 int MSG_ERROR ;
 scalar_t__ PK_PRIVATE ;
 int error_to_string (int) ;
 int os_free (struct crypto_private_key*) ;
 struct crypto_private_key* os_zalloc (int) ;
 int rsa_free (TYPE_1__*) ;
 int rsa_import (int const*,size_t,TYPE_1__*) ;
 int wpa_printf (int ,char*,...) ;

struct crypto_private_key * crypto_private_key_import(const u8 *key,
            size_t len,
            const char *passwd)
{
 int res;
 struct crypto_private_key *pk;

 pk = os_zalloc(sizeof(*pk));
 if (pk == ((void*)0))
  return ((void*)0);

 res = rsa_import(key, len, &pk->rsa);
 if (res != CRYPT_OK) {
  wpa_printf(MSG_ERROR, "LibTomCrypt: Failed to import "
      "private key (res=%d '%s')",
      res, error_to_string(res));
  os_free(pk);
  return ((void*)0);
 }

 if (pk->rsa.type != PK_PRIVATE) {
  wpa_printf(MSG_ERROR, "LibTomCrypt: Private key was not of "
      "correct type");
  rsa_free(&pk->rsa);
  os_free(pk);
  return ((void*)0);
 }

 return pk;
}
