
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union uu {scalar_t__* ul; int uq; } ;
typedef int u_quad_t ;


 size_t H ;
 size_t L ;
 int LONG_BITS ;

double
__floatunsdidf(u_quad_t x)
{
 double d;
 union uu u;

 u.uq = x;
 d = (double)u.ul[H] * ((1 << (LONG_BITS - 2)) * 4.0);
 d += u.ul[L];
 return (d);
}
