
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int key_bits ;
typedef int i_buf ;


 int SHA256_MAC_LEN ;
 int WPA_PUT_BE32 (int *,int) ;
 int hmac_sha256_vector (int const*,int,int,int const**,size_t*,int *) ;
 int os_memcpy (int *,int *,size_t) ;
 size_t os_strlen (char const*) ;

void wps_kdf(const u8 *key, const u8 *label_prefix, size_t label_prefix_len,
      const char *label, u8 *res, size_t res_len)
{
 u8 i_buf[4], key_bits[4];
 const u8 *addr[4];
 size_t len[4];
 int i, iter;
 u8 hash[SHA256_MAC_LEN], *opos;
 size_t left;

 WPA_PUT_BE32(key_bits, res_len * 8);

 addr[0] = i_buf;
 len[0] = sizeof(i_buf);
 addr[1] = label_prefix;
 len[1] = label_prefix_len;
 addr[2] = (const u8 *) label;
 len[2] = os_strlen(label);
 addr[3] = key_bits;
 len[3] = sizeof(key_bits);

 iter = (res_len + SHA256_MAC_LEN - 1) / SHA256_MAC_LEN;
 opos = res;
 left = res_len;

 for (i = 1; i <= iter; i++) {
  WPA_PUT_BE32(i_buf, i);
  hmac_sha256_vector(key, SHA256_MAC_LEN, 4, addr, len, hash);
  if (i < iter) {
   os_memcpy(opos, hash, SHA256_MAC_LEN);
   opos += SHA256_MAC_LEN;
   left -= SHA256_MAC_LEN;
  } else
   os_memcpy(opos, hash, left);
 }
}
