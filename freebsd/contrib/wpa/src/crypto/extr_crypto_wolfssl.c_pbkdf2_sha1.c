
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int byte ;


 int WC_SHA ;
 int os_strlen (char const*) ;
 scalar_t__ wc_PBKDF2 (int *,int const*,int ,int const*,size_t,int,size_t,int ) ;

int pbkdf2_sha1(const char *passphrase, const u8 *ssid, size_t ssid_len,
  int iterations, u8 *buf, size_t buflen)
{
 if (wc_PBKDF2(buf, (const byte*)passphrase, os_strlen(passphrase), ssid,
        ssid_len, iterations, buflen, WC_SHA) != 0)
  return -1;
 return 0;
}
