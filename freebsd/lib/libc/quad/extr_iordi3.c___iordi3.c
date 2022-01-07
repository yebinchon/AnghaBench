
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union uu {void* q; int * ul; } ;
typedef void* quad_t ;



quad_t
__iordi3(quad_t a, quad_t b)
{
 union uu aa, bb;

 aa.q = a;
 bb.q = b;
 aa.ul[0] |= bb.ul[0];
 aa.ul[1] |= bb.ul[1];
 return (aa.q);
}
