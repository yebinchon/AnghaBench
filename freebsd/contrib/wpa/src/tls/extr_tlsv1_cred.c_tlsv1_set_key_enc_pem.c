
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_private_key {int dummy; } ;


 unsigned char* base64_decode (int const*,int,size_t*) ;
 struct crypto_private_key* crypto_private_key_import (unsigned char*,size_t,char const*) ;
 int os_free (unsigned char*) ;
 int os_strlen (int ) ;
 int pem_key_enc_begin ;
 int pem_key_enc_end ;
 int * search_tag (int ,int const*,int) ;

__attribute__((used)) static struct crypto_private_key * tlsv1_set_key_enc_pem(const u8 *key,
        size_t len,
        const char *passwd)
{
 const u8 *pos, *end;
 unsigned char *der;
 size_t der_len;
 struct crypto_private_key *pkey;

 if (passwd == ((void*)0))
  return ((void*)0);
 pos = search_tag(pem_key_enc_begin, key, len);
 if (!pos)
  return ((void*)0);
 pos += os_strlen(pem_key_enc_begin);
 end = search_tag(pem_key_enc_end, pos, key + len - pos);
 if (!end)
  return ((void*)0);

 der = base64_decode(pos, end - pos, &der_len);
 if (!der)
  return ((void*)0);
 pkey = crypto_private_key_import(der, der_len, passwd);
 os_free(der);
 return pkey;
}
