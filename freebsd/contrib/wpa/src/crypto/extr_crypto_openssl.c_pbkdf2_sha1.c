
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int PKCS5_PBKDF2_HMAC_SHA1 (char const*,int ,int const*,size_t,int,size_t,int *) ;
 int os_strlen (char const*) ;

int pbkdf2_sha1(const char *passphrase, const u8 *ssid, size_t ssid_len,
  int iterations, u8 *buf, size_t buflen)
{
 if (PKCS5_PBKDF2_HMAC_SHA1(passphrase, os_strlen(passphrase), ssid,
       ssid_len, iterations, buflen, buf) != 1)
  return -1;
 return 0;
}
