
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int ibuf ;
typedef int hash ;


 int WPA_PUT_BE16 (int *,size_t) ;
 scalar_t__ omac1_aes_128_vector (int const*,int,int const**,size_t*,int *) ;
 int os_memcpy (int *,int *,size_t) ;

__attribute__((used)) static int eap_gpsk_gkdf_cmac(const u8 *psk ,
         const u8 *data , size_t data_len,
         u8 *buf, size_t len )
{
 u8 *opos;
 size_t i, n, hashlen, left, clen;
 u8 ibuf[2], hash[16];
 const u8 *addr[2];
 size_t vlen[2];

 hashlen = sizeof(hash);

 addr[0] = ibuf;
 vlen[0] = sizeof(ibuf);
 addr[1] = data;
 vlen[1] = data_len;

 opos = buf;
 left = len;
 n = (len + hashlen - 1) / hashlen;
 for (i = 1; i <= n; i++) {
  WPA_PUT_BE16(ibuf, i);
  if (omac1_aes_128_vector(psk, 2, addr, vlen, hash))
   return -1;
  clen = left > hashlen ? hashlen : left;
  os_memcpy(opos, hash, clen);
  opos += clen;
  left -= clen;
 }

 return 0;
}
