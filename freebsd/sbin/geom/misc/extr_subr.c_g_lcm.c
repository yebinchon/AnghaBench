
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int gcd (unsigned int,unsigned int) ;

unsigned int
g_lcm(unsigned int a, unsigned int b)
{

 return ((a * b) / gcd(a, b));
}
