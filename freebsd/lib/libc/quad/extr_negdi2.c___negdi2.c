
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union uu {int* ul; int q; } ;
typedef int quad_t ;


 size_t H ;
 size_t L ;

quad_t
__negdi2(quad_t a)
{
 union uu aa, res;

 aa.q = a;
 res.ul[L] = -aa.ul[L];
 res.ul[H] = -aa.ul[H] - (res.ul[L] > 0);
 return (res.q);
}
