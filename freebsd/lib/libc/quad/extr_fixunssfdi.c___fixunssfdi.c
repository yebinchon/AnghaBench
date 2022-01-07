
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union uu {unsigned long* ul; float uq; } ;
typedef float u_quad_t ;
typedef unsigned long u_long ;


 size_t H ;
 size_t L ;
 double ONE ;
 double ONE_HALF ;
 double ULONG_MAX ;
 float UQUAD_MAX ;

u_quad_t
__fixunssfdi(float f)
{
 double x, toppart;
 union uu t;

 if (f < 0)
  return (UQUAD_MAX);




 if (f >= 18446744073709551615.0)
  return (UQUAD_MAX);

 x = f;





 toppart = (x - ONE_HALF) / ONE;
 t.ul[H] = (unsigned long)toppart;
 t.ul[L] = 0;
 x -= (double)t.uq;
 if (x < 0) {
  t.ul[H]--;
  x += ULONG_MAX;
 }
 if (x > ULONG_MAX) {
  t.ul[H]++;
  x -= ULONG_MAX;
 }
 t.ul[L] = (u_long)x;
 return (t.uq);
}
