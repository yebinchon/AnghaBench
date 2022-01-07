
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int arc4random () ;

u_int32_t
arc4random_uniform(u_int32_t upper_bound)
{
 u_int32_t r, min;

 if (upper_bound < 2)
  return 0;


 min = -upper_bound % upper_bound;







 for (;;) {
  r = arc4random();
  if (r >= min)
   break;
 }

 return r % upper_bound;
}
