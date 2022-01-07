
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union uu {int q; int * ul; } ;
typedef int quad_t ;



quad_t
__one_cmpldi2(quad_t a)
{
 union uu aa;

 aa.q = a;
 aa.ul[0] = ~aa.ul[0];
 aa.ul[1] = ~aa.ul[1];
 return (aa.q);
}
