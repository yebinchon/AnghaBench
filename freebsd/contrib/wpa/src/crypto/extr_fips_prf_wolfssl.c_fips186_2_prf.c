
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xkey ;
typedef int u8 ;
typedef int u32 ;


 int WPA_PUT_BE32 (int*,int) ;
 int os_memcpy (int*,int const*,int) ;
 int os_memset (int*,int ,int) ;
 int sha1_transform (int*,int*) ;

int fips186_2_prf(const u8 *seed, size_t seed_len, u8 *x, size_t xlen)
{
 u8 xkey[64];
 u32 t[5], _t[5];
 int i, j, m, k;
 u8 *xpos = x;
 u32 carry;

 if (seed_len < sizeof(xkey))
  os_memset(xkey + seed_len, 0, sizeof(xkey) - seed_len);
 else
  seed_len = sizeof(xkey);



 os_memcpy(xkey, seed, seed_len);
 t[0] = 0x67452301;
 t[1] = 0xEFCDAB89;
 t[2] = 0x98BADCFE;
 t[3] = 0x10325476;
 t[4] = 0xC3D2E1F0;

 m = xlen / 40;
 for (j = 0; j < m; j++) {

  for (i = 0; i < 2; i++) {



   os_memcpy(_t, t, 20);
   sha1_transform(_t, xkey);
   WPA_PUT_BE32(xpos, _t[0]);
   WPA_PUT_BE32(xpos + 4, _t[1]);
   WPA_PUT_BE32(xpos + 8, _t[2]);
   WPA_PUT_BE32(xpos + 12, _t[3]);
   WPA_PUT_BE32(xpos + 16, _t[4]);


   carry = 1;
   for (k = 19; k >= 0; k--) {
    carry += xkey[k] + xpos[k];
    xkey[k] = carry & 0xff;
    carry >>= 8;
   }

   xpos += 20;
  }

 }

 return 0;
}
