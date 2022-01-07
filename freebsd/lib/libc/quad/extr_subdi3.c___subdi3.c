
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union uu {void* q; scalar_t__* ul; } ;
typedef void* quad_t ;


 size_t H ;
 size_t L ;

quad_t
__subdi3(quad_t a, quad_t b)
{
 union uu aa, bb, diff;

 aa.q = a;
 bb.q = b;
 diff.ul[L] = aa.ul[L] - bb.ul[L];
 diff.ul[H] = aa.ul[H] - bb.ul[H] - (diff.ul[L] > aa.ul[L]);
 return (diff.q);
}
