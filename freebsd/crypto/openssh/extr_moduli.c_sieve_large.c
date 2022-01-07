
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int BIT_SET (int ,int) ;
 int BN_mod_word (int ,int) ;
 int LargeSieve ;
 int SMALL_MAXIMUM ;
 int debug3 (char*,int) ;
 int largebase ;
 int largebits ;
 int largetries ;

__attribute__((used)) static void
sieve_large(u_int32_t s)
{
 u_int32_t r, u;

 debug3("sieve_large %u", s);
 largetries++;

 r = BN_mod_word(largebase, s);
 if (r == 0)
  u = 0;
 else
  u = s - r;

 if (u < largebits * 2) {





  if (u & 0x1)
   u += s;


  for (u /= 2; u < largebits; u += s)
   BIT_SET(LargeSieve, u);
 }


 r = (2 * r + 1) % s;
 if (r == 0)
  u = 0;
 else
  u = s - r;

 if (u < largebits * 4) {





  while (u & 0x3) {
   if (SMALL_MAXIMUM - u < s)
    return;
   u += s;
  }


  for (u /= 4; u < largebits; u += s)
   BIT_SET(LargeSieve, u);
 }
}
