
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_quad_t ;


 int __qdivrem (int ,int ,int *) ;

u_quad_t
__umoddi3(u_quad_t a, u_quad_t b)
{
 u_quad_t r;

 (void)__qdivrem(a, b, &r);
 return (r);
}
