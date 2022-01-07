
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_quad_t ;
typedef scalar_t__ quad_t ;


 scalar_t__ __qdivrem (scalar_t__,scalar_t__,scalar_t__*) ;

quad_t
__divdi3(quad_t a, quad_t b)
{
 u_quad_t ua, ub, uq;
 int neg;

 if (a < 0)
  ua = -(u_quad_t)a, neg = 1;
 else
  ua = a, neg = 0;
 if (b < 0)
  ub = -(u_quad_t)b, neg ^= 1;
 else
  ub = b;
 uq = __qdivrem(ua, ub, (u_quad_t *)0);
 return (neg ? -uq : uq);
}
