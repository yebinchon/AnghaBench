
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int GET_HIGH_WORD (int,double) ;
 int SET_LOW_WORD (double,int ) ;
 double* T ;
 double pio4 ;
 double pio4lo ;

double
__kernel_tan(double x, double y, int iy) {
 double z, r, v, w, s;
 int32_t ix, hx;

 GET_HIGH_WORD(hx,x);
 ix = hx & 0x7fffffff;
 if (ix >= 0x3FE59428) {
  if (hx < 0) {
   x = -x;
   y = -y;
  }
  z = pio4 - x;
  w = pio4lo - y;
  x = z + w;
  y = 0.0;
 }
 z = x * x;
 w = z * z;





 r = T[1] + w * (T[3] + w * (T[5] + w * (T[7] + w * (T[9] +
  w * T[11]))));
 v = z * (T[2] + w * (T[4] + w * (T[6] + w * (T[8] + w * (T[10] +
  w * T[12])))));
 s = z * x;
 r = y + z * (s * (r + v) + y);
 r += T[0] * s;
 w = x + r;
 if (ix >= 0x3FE59428) {
  v = (double) iy;
  return (double) (1 - ((hx >> 30) & 2)) *
   (v - 2.0 * (x - (w * w / (w + v) - r)));
 }
 if (iy == 1)
  return w;
 else {





  double a, t;
  z = w;
  SET_LOW_WORD(z,0);
  v = r - (z - x);
  t = a = -1.0 / w;
  SET_LOW_WORD(t,0);
  s = 1.0 + t * z;
  return t + a * (s + t * v);
 }
}
