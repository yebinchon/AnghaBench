
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp_configurator {int csign; } ;
typedef int EC_KEY ;


 int EC_KEY_free (int *) ;
 int * EVP_PKEY_get1_EC_KEY (int ) ;
 int OPENSSL_free (unsigned char*) ;
 int i2d_ECPrivateKey (int *,unsigned char**) ;
 int wpa_snprintf_hex (char*,size_t,unsigned char*,int) ;

int dpp_configurator_get_key(const struct dpp_configurator *conf, char *buf,
        size_t buflen)
{
 EC_KEY *eckey;
 int key_len, ret = -1;
 unsigned char *key = ((void*)0);

 if (!conf->csign)
  return -1;

 eckey = EVP_PKEY_get1_EC_KEY(conf->csign);
 if (!eckey)
  return -1;

 key_len = i2d_ECPrivateKey(eckey, &key);
 if (key_len > 0)
  ret = wpa_snprintf_hex(buf, buflen, key, key_len);

 EC_KEY_free(eckey);
 OPENSSL_free(key);
 return ret;
}
