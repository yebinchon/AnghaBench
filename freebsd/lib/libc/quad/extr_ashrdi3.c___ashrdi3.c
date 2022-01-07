
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union uu {int* sl; long* ul; int q; } ;
typedef int quad_t ;
typedef int qshift_t ;


 size_t H ;
 size_t L ;
 int LONG_BITS ;
 int QUAD_BITS ;

quad_t
__ashrdi3(quad_t a, qshift_t shift)
{
 union uu aa;

 aa.q = a;
 if (shift >= LONG_BITS) {
  long s;
  s = (aa.sl[H] >> (LONG_BITS - 1)) >> 1;
  aa.ul[L] = shift >= QUAD_BITS ? s :
      aa.sl[H] >> (shift - LONG_BITS);
  aa.ul[H] = s;
 } else if (shift > 0) {
  aa.ul[L] = (aa.ul[L] >> shift) |
      (aa.ul[H] << (LONG_BITS - shift));
  aa.sl[H] >>= shift;
 }
 return (aa.q);
}
