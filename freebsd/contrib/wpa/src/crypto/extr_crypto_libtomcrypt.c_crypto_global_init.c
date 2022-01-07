
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSG_ERROR ;
 int aes_desc ;
 int des3_desc ;
 int des_desc ;
 int ltc_mp ;
 int md4_desc ;
 int md5_desc ;
 scalar_t__ register_cipher (int *) ;
 scalar_t__ register_hash (int *) ;
 int sha1_desc ;
 int tfm_desc ;
 int wpa_printf (int ,char*) ;

int crypto_global_init(void)
{
 ltc_mp = tfm_desc;

 if (register_hash(&md4_desc) < 0 ||
     register_hash(&md5_desc) < 0 ||
     register_hash(&sha1_desc) < 0 ||
     register_cipher(&aes_desc) < 0 ||
     register_cipher(&des_desc) < 0 ||
     register_cipher(&des3_desc) < 0) {
  wpa_printf(MSG_ERROR, "TLSv1: Failed to register "
      "hash/cipher functions");
  return -1;
 }

 return 0;
}
