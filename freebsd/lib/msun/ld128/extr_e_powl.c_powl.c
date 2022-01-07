
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int int32_t ;
struct TYPE_3__ {int mswhi; int mswlo; int lswhi; int lswlo; } ;
struct TYPE_4__ {long double value; TYPE_1__ parts32; } ;
typedef TYPE_2__ ieee_quad_shape_type ;


 long double* LD ;
 long double* LN ;
 long double* PD ;
 long double* PN ;
 long double* bp ;
 long double cp ;
 long double cp_h ;
 long double cp_l ;
 long double* dp_h ;
 long double* dp_l ;
 long double fabsl (long double) ;
 long double floorl (long double) ;
 long double huge ;
 long double lg2 ;
 long double lg2_h ;
 long double lg2_l ;
 long double nan_mix (long double,long double) ;
 long double one ;
 long double ovt ;
 long double scalbnl (long double,int) ;
 long double sqrtl (long double) ;
 long double tiny ;
 long double two ;
 long double two113 ;
 long double zero ;

long double
powl(long double x, long double y)
{
  long double z, ax, z_h, z_l, p_h, p_l;
  long double yy1, t1, t2, r, s, t, u, v, w;
  long double s2, s_h, s_l, t_h, t_l;
  int32_t i, j, k, yisint, n;
  u_int32_t ix, iy;
  int32_t hx, hy;
  ieee_quad_shape_type o, p, q;

  p.value = x;
  hx = p.parts32.mswhi;
  ix = hx & 0x7fffffff;

  q.value = y;
  hy = q.parts32.mswhi;
  iy = hy & 0x7fffffff;



  if ((iy | q.parts32.mswlo | q.parts32.lswhi | q.parts32.lswlo) == 0)
    return one;


  if (x == one)
    return one;
  if (x == -1.0L && iy == 0x7fff0000
      && (q.parts32.mswlo | q.parts32.lswhi | q.parts32.lswlo) == 0)
    return one;


  if ((ix > 0x7fff0000)
      || ((ix == 0x7fff0000)
   && ((p.parts32.mswlo | p.parts32.lswhi | p.parts32.lswlo) != 0))
      || (iy > 0x7fff0000)
      || ((iy == 0x7fff0000)
   && ((q.parts32.mswlo | q.parts32.lswhi | q.parts32.lswlo) != 0)))
    return nan_mix(x, y);






  yisint = 0;
  if (hx < 0)
    {
      if (iy >= 0x40700000)
 yisint = 2;
      else if (iy >= 0x3fff0000)
 {
   if (floorl (y) == y)
     {
       z = 0.5 * y;
       if (floorl (z) == z)
  yisint = 2;
       else
  yisint = 1;
     }
 }
    }


  if ((q.parts32.mswlo | q.parts32.lswhi | q.parts32.lswlo) == 0)
    {
      if (iy == 0x7fff0000)
 {
   if (((ix - 0x3fff0000) | p.parts32.mswlo | p.parts32.lswhi |
     p.parts32.lswlo) == 0)
     return y - y;
   else if (ix >= 0x3fff0000)
     return (hy >= 0) ? y : zero;
   else
     return (hy < 0) ? -y : zero;
 }
      if (iy == 0x3fff0000)
 {
   if (hy < 0)
     return one / x;
   else
     return x;
 }
      if (hy == 0x40000000)
 return x * x;
      if (hy == 0x3ffe0000)
 {
   if (hx >= 0)
     return sqrtl (x);
 }
    }

  ax = fabsl (x);

  if ((p.parts32.mswlo | p.parts32.lswhi | p.parts32.lswlo) == 0)
    {
      if (ix == 0x7fff0000 || ix == 0 || ix == 0x3fff0000)
 {
   z = ax;
   if (hy < 0)
     z = one / z;
   if (hx < 0)
     {
       if (((ix - 0x3fff0000) | yisint) == 0)
  {
    z = (z - z) / (z - z);
  }
       else if (yisint == 1)
  z = -z;
     }
   return z;
 }
    }


  if (((((u_int32_t) hx >> 31) - 1) | yisint) == 0)
    return (x - x) / (x - x);




  if (iy > 0x401d654b)
    {

      if (iy > 0x407d654b)
 {
   if (ix <= 0x3ffeffff)
     return (hy < 0) ? huge * huge : tiny * tiny;
   if (ix >= 0x3fff0000)
     return (hy > 0) ? huge * huge : tiny * tiny;
 }

      if (ix < 0x3ffeffff)
 return (hy < 0) ? huge * huge : tiny * tiny;
      if (ix > 0x3fff0000)
 return (hy > 0) ? huge * huge : tiny * tiny;
    }

  n = 0;

  if (ix < 0x00010000)
    {
      ax *= two113;
      n -= 113;
      o.value = ax;
      ix = o.parts32.mswhi;
    }
  n += ((ix) >> 16) - 0x3fff;
  j = ix & 0x0000ffff;

  ix = j | 0x3fff0000;
  if (j <= 0x3988)
    k = 0;
  else if (j < 0xbb67)
    k = 1;
  else
    {
      k = 0;
      n += 1;
      ix -= 0x00010000;
    }

  o.value = ax;
  o.parts32.mswhi = ix;
  ax = o.value;


  u = ax - bp[k];
  v = one / (ax + bp[k]);
  s = u * v;
  s_h = s;

  o.value = s_h;
  o.parts32.lswlo = 0;
  o.parts32.lswhi &= 0xf8000000;
  s_h = o.value;

  t_h = ax + bp[k];
  o.value = t_h;
  o.parts32.lswlo = 0;
  o.parts32.lswhi &= 0xf8000000;
  t_h = o.value;
  t_l = ax - (t_h - bp[k]);
  s_l = v * ((u - s_h * t_h) - s_h * t_l);

  s2 = s * s;
  u = LN[0] + s2 * (LN[1] + s2 * (LN[2] + s2 * (LN[3] + s2 * LN[4])));
  v = LD[0] + s2 * (LD[1] + s2 * (LD[2] + s2 * (LD[3] + s2 * (LD[4] + s2))));
  r = s2 * s2 * u / v;
  r += s_l * (s_h + s);
  s2 = s_h * s_h;
  t_h = 3.0 + s2 + r;
  o.value = t_h;
  o.parts32.lswlo = 0;
  o.parts32.lswhi &= 0xf8000000;
  t_h = o.value;
  t_l = r - ((t_h - 3.0) - s2);

  u = s_h * t_h;
  v = s_l * t_h + t_l * s;

  p_h = u + v;
  o.value = p_h;
  o.parts32.lswlo = 0;
  o.parts32.lswhi &= 0xf8000000;
  p_h = o.value;
  p_l = v - (p_h - u);
  z_h = cp_h * p_h;
  z_l = cp_l * p_h + p_l * cp + dp_l[k];

  t = (long double) n;
  t1 = (((z_h + z_l) + dp_h[k]) + t);
  o.value = t1;
  o.parts32.lswlo = 0;
  o.parts32.lswhi &= 0xf8000000;
  t1 = o.value;
  t2 = z_l - (((t1 - t) - dp_h[k]) - z_h);


  s = one;
  if (((((u_int32_t) hx >> 31) - 1) | (yisint - 1)) == 0)
    s = -one;


  yy1 = y;
  o.value = yy1;
  o.parts32.lswlo = 0;
  o.parts32.lswhi &= 0xf8000000;
  yy1 = o.value;
  p_l = (y - yy1) * t1 + y * t2;
  p_h = yy1 * t1;
  z = p_l + p_h;
  o.value = z;
  j = o.parts32.mswhi;
  if (j >= 0x400d0000)
    {

      if (((j - 0x400d0000) | o.parts32.mswlo | o.parts32.lswhi |
 o.parts32.lswlo) != 0)
 return s * huge * huge;
      else
 {
   if (p_l + ovt > z - p_h)
     return s * huge * huge;
 }
    }
  else if ((j & 0x7fffffff) >= 0x400d01b9)
    {

      if (((j - 0xc00d01bc) | o.parts32.mswlo | o.parts32.lswhi |
 o.parts32.lswlo)
   != 0)
 return s * tiny * tiny;
      else
 {
   if (p_l <= z - p_h)
     return s * tiny * tiny;
 }
    }

  i = j & 0x7fffffff;
  k = (i >> 16) - 0x3fff;
  n = 0;
  if (i > 0x3ffe0000)
    {
      n = floorl (z + 0.5L);
      t = n;
      p_h -= t;
    }
  t = p_l + p_h;
  o.value = t;
  o.parts32.lswlo = 0;
  o.parts32.lswhi &= 0xf8000000;
  t = o.value;
  u = t * lg2_h;
  v = (p_l - (t - p_h)) * lg2 + t * lg2_l;
  z = u + v;
  w = v - (z - u);

  t = z * z;
  u = PN[0] + t * (PN[1] + t * (PN[2] + t * (PN[3] + t * PN[4])));
  v = PD[0] + t * (PD[1] + t * (PD[2] + t * (PD[3] + t)));
  t1 = z - t * u / v;
  r = (z * t1) / (t1 - two) - (w + z * w);
  z = one - (r - z);
  o.value = z;
  j = o.parts32.mswhi;
  j += (n << 16);
  if ((j >> 16) <= 0)
    z = scalbnl (z, n);
  else
    {
      o.parts32.mswhi = j;
      z = o.value;
    }
  return s * z;
}
