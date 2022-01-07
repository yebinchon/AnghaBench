
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union uu {scalar_t__* ul; void* uq; } ;
typedef void* u_quad_t ;


 size_t H ;
 size_t L ;

int
__ucmpdi2(u_quad_t a, u_quad_t b)
{
 union uu aa, bb;

 aa.uq = a;
 bb.uq = b;
 return (aa.ul[H] < bb.ul[H] ? 0 : aa.ul[H] > bb.ul[H] ? 2 :
     aa.ul[L] < bb.ul[L] ? 0 : aa.ul[L] > bb.ul[L] ? 2 : 1);
}
