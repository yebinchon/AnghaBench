
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;


 int SHA1_MAC_LEN ;
 scalar_t__ hmac_sha1_vector (unsigned char const*,size_t,int,unsigned char const**,size_t*,unsigned char*) ;
 int os_memcpy (unsigned char*,unsigned char*,size_t) ;
 int os_strlen (char const*) ;

__attribute__((used)) static int eap_sake_kdf(const u8 *key, size_t key_len, const char *label,
   const u8 *data, size_t data_len,
   const u8 *data2, size_t data2_len,
   u8 *buf, size_t buf_len)
{
 u8 counter = 0;
 size_t pos, plen;
 u8 hash[SHA1_MAC_LEN];
 size_t label_len = os_strlen(label) + 1;
 const unsigned char *addr[4];
 size_t len[4];

 addr[0] = (u8 *) label;
 len[0] = label_len;
 addr[1] = data;
 len[1] = data_len;
 addr[2] = data2;
 len[2] = data2_len;
 addr[3] = &counter;
 len[3] = 1;

 pos = 0;
 while (pos < buf_len) {
  plen = buf_len - pos;
  if (plen >= SHA1_MAC_LEN) {
   if (hmac_sha1_vector(key, key_len, 4, addr, len,
          &buf[pos]) < 0)
    return -1;
   pos += SHA1_MAC_LEN;
  } else {
   if (hmac_sha1_vector(key, key_len, 4, addr, len,
          hash) < 0)
    return -1;
   os_memcpy(&buf[pos], hash, plen);
   break;
  }
  counter++;
 }

 return 0;
}
