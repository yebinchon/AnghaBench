
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;


 int SHA1_MAC_LEN ;
 scalar_t__ hmac_sha1_vector (unsigned char const*,size_t,int,unsigned char const**,size_t*,unsigned char*) ;
 int os_memcpy (unsigned char*,unsigned char*,size_t) ;
 size_t os_strlen (char const*) ;

int peap_prfplus(int version, const u8 *key, size_t key_len,
   const char *label, const u8 *seed, size_t seed_len,
   u8 *buf, size_t buf_len)
{
 unsigned char counter = 0;
 size_t pos, plen;
 u8 hash[SHA1_MAC_LEN];
 size_t label_len = os_strlen(label);
 u8 extra[2];
 const unsigned char *addr[5];
 size_t len[5];

 addr[0] = hash;
 len[0] = 0;
 addr[1] = (unsigned char *) label;
 len[1] = label_len;
 addr[2] = seed;
 len[2] = seed_len;

 if (version == 0) {
  extra[0] = 0;
  extra[1] = 0;

  addr[3] = &counter;
  len[3] = 1;
  addr[4] = extra;
  len[4] = 2;
 } else {
  extra[0] = buf_len & 0xff;

  addr[3] = extra;
  len[3] = 1;
  addr[4] = &counter;
  len[4] = 1;
 }

 pos = 0;
 while (pos < buf_len) {
  counter++;
  plen = buf_len - pos;
  if (hmac_sha1_vector(key, key_len, 5, addr, len, hash) < 0)
   return -1;
  if (plen >= SHA1_MAC_LEN) {
   os_memcpy(&buf[pos], hash, SHA1_MAC_LEN);
   pos += SHA1_MAC_LEN;
  } else {
   os_memcpy(&buf[pos], hash, plen);
   break;
  }
  len[0] = SHA1_MAC_LEN;
 }

 return 0;
}
