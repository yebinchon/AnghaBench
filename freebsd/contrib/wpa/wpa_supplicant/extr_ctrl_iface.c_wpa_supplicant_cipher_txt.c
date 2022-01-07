
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int os_snprintf (char*,int,char*) ;
 scalar_t__ os_snprintf_error (int,int) ;
 int wpa_write_ciphers (char*,char*,int,char*) ;

__attribute__((used)) static char * wpa_supplicant_cipher_txt(char *pos, char *end, int cipher)
{
 int ret;
 ret = os_snprintf(pos, end - pos, "-");
 if (os_snprintf_error(end - pos, ret))
  return pos;
 pos += ret;
 ret = wpa_write_ciphers(pos, end, cipher, "+");
 if (ret < 0)
  return pos;
 pos += ret;
 return pos;
}
