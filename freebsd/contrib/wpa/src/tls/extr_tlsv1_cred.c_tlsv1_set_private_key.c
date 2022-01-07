
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
struct tlsv1_credentials {int * key; } ;


 int MSG_INFO ;
 int crypto_private_key_free (int *) ;
 int os_free (int const*) ;
 scalar_t__ os_readfile (char const*,size_t*) ;
 int tlsv1_set_key (struct tlsv1_credentials*,int const*,size_t,char const*) ;
 int wpa_printf (int ,char*,char const*) ;

int tlsv1_set_private_key(struct tlsv1_credentials *cred,
     const char *private_key,
     const char *private_key_passwd,
     const u8 *private_key_blob,
     size_t private_key_blob_len)
{
 crypto_private_key_free(cred->key);
 cred->key = ((void*)0);

 if (private_key_blob)
  return tlsv1_set_key(cred, private_key_blob,
         private_key_blob_len,
         private_key_passwd);

 if (private_key) {
  u8 *buf;
  size_t len;
  int ret;

  buf = (u8 *) os_readfile(private_key, &len);
  if (buf == ((void*)0)) {
   wpa_printf(MSG_INFO, "TLSv1: Failed to read '%s'",
       private_key);
   return -1;
  }

  ret = tlsv1_set_key(cred, buf, len, private_key_passwd);
  os_free(buf);
  return ret;
 }

 return 0;
}
