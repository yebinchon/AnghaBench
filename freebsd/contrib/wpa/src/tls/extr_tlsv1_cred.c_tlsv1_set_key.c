
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tlsv1_credentials {int * key; } ;


 int MSG_INFO ;
 int * crypto_private_key_import (int const*,size_t,char const*) ;
 int pkcs12_parse (struct tlsv1_credentials*,int const*,size_t,char const*) ;
 int * tlsv1_set_key_enc_pem (int const*,size_t,char const*) ;
 int * tlsv1_set_key_pem (int const*,size_t) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int tlsv1_set_key(struct tlsv1_credentials *cred,
    const u8 *key, size_t len, const char *passwd)
{
 cred->key = crypto_private_key_import(key, len, passwd);
 if (cred->key == ((void*)0))
  cred->key = tlsv1_set_key_pem(key, len);
 if (cred->key == ((void*)0))
  cred->key = tlsv1_set_key_enc_pem(key, len, passwd);




 if (cred->key == ((void*)0)) {
  wpa_printf(MSG_INFO, "TLSv1: Failed to parse private key");
  return -1;
 }
 return 0;
}
