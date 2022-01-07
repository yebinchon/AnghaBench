
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
typedef int k_pad ;


 size_t SHA256_MAC_LEN ;
 int os_memcpy (unsigned char*,unsigned char const*,size_t) ;
 int os_memset (unsigned char*,int ,int) ;
 int sha256_vector (int,unsigned char const**,size_t*,unsigned char*) ;

int hmac_sha256_vector(const u8 *key, size_t key_len, size_t num_elem,
         const u8 *addr[], const size_t *len, u8 *mac)
{
 unsigned char k_pad[64];
 unsigned char tk[32];
 const u8 *_addr[6];
 size_t _len[6], i;

 if (num_elem > 5) {




  return -1;
 }


        if (key_len > 64) {
  if (sha256_vector(1, &key, &key_len, tk) < 0)
   return -1;
  key = tk;
  key_len = 32;
        }
 os_memset(k_pad, 0, sizeof(k_pad));
 os_memcpy(k_pad, key, key_len);

 for (i = 0; i < 64; i++)
  k_pad[i] ^= 0x36;


 _addr[0] = k_pad;
 _len[0] = 64;
 for (i = 0; i < num_elem; i++) {
  _addr[i + 1] = addr[i];
  _len[i + 1] = len[i];
 }
 if (sha256_vector(1 + num_elem, _addr, _len, mac) < 0)
  return -1;

 os_memset(k_pad, 0, sizeof(k_pad));
 os_memcpy(k_pad, key, key_len);

 for (i = 0; i < 64; i++)
  k_pad[i] ^= 0x5c;


 _addr[0] = k_pad;
 _len[0] = 64;
 _addr[1] = mac;
 _len[1] = SHA256_MAC_LEN;
 return sha256_vector(2, _addr, _len, mac);
}
