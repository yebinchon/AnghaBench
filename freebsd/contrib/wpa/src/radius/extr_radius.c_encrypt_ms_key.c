
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u16 ;
typedef int saltbuf ;


 int MD5_MAC_LEN ;
 int WPA_PUT_BE16 (size_t*,int ) ;
 int md5_vector (int,size_t const**,size_t*,size_t*) ;
 int os_memcpy (size_t*,size_t const*,size_t) ;
 int os_memset (size_t*,int ,int) ;

__attribute__((used)) static void encrypt_ms_key(const u8 *key, size_t key_len, u16 salt,
      const u8 *req_authenticator,
      const u8 *secret, size_t secret_len,
      u8 *ebuf, size_t *elen)
{
 int i, len, first = 1;
 u8 hash[MD5_MAC_LEN], saltbuf[2], *pos;
 const u8 *addr[3];
 size_t _len[3];

 WPA_PUT_BE16(saltbuf, salt);

 len = 1 + key_len;
 if (len & 0x0f) {
  len = (len & 0xf0) + 16;
 }
 os_memset(ebuf, 0, len);
 ebuf[0] = key_len;
 os_memcpy(ebuf + 1, key, key_len);

 *elen = len;

 pos = ebuf;
 while (len > 0) {


  addr[0] = secret;
  _len[0] = secret_len;
  if (first) {
   addr[1] = req_authenticator;
   _len[1] = MD5_MAC_LEN;
   addr[2] = saltbuf;
   _len[2] = sizeof(saltbuf);
  } else {
   addr[1] = pos - MD5_MAC_LEN;
   _len[1] = MD5_MAC_LEN;
  }
  md5_vector(first ? 3 : 2, addr, _len, hash);
  first = 0;

  for (i = 0; i < MD5_MAC_LEN; i++)
   *pos++ ^= hash[i];

  len -= MD5_MAC_LEN;
 }
}
