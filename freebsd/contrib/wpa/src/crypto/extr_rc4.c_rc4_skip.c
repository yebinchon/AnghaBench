
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int S_SWAP (int,int) ;

int rc4_skip(const u8 *key, size_t keylen, size_t skip,
      u8 *data, size_t data_len)
{
 u32 i, j, k;
 u8 S[256], *pos;
 size_t kpos;


 for (i = 0; i < 256; i++)
  S[i] = i;
 j = 0;
 kpos = 0;
 for (i = 0; i < 256; i++) {
  j = (j + S[i] + key[kpos]) & 0xff;
  kpos++;
  if (kpos >= keylen)
   kpos = 0;
  S_SWAP(i, j);
 }


 i = j = 0;
 for (k = 0; k < skip; k++) {
  i = (i + 1) & 0xff;
  j = (j + S[i]) & 0xff;
  S_SWAP(i, j);
 }


 pos = data;
 for (k = 0; k < data_len; k++) {
  i = (i + 1) & 0xff;
  j = (j + S[i]) & 0xff;
  S_SWAP(i, j);
  *pos++ ^= S[(S[i] + S[j]) & 0xff];
 }

 return 0;
}
