
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;


 int SHA1_MAC_LEN ;
 int os_memcpy (unsigned char*,unsigned char*,size_t) ;
 scalar_t__ pbkdf2_sha1_f (char const*,unsigned char const*,size_t,int,unsigned int,unsigned char*) ;

int pbkdf2_sha1(const char *passphrase, const u8 *ssid, size_t ssid_len,
  int iterations, u8 *buf, size_t buflen)
{
 unsigned int count = 0;
 unsigned char *pos = buf;
 size_t left = buflen, plen;
 unsigned char digest[SHA1_MAC_LEN];

 while (left > 0) {
  count++;
  if (pbkdf2_sha1_f(passphrase, ssid, ssid_len, iterations,
      count, digest))
   return -1;
  plen = left > SHA1_MAC_LEN ? SHA1_MAC_LEN : left;
  os_memcpy(pos, digest, plen);
  pos += plen;
  left -= plen;
 }

 return 0;
}
