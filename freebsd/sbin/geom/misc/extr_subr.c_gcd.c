
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int
gcd(unsigned int a, unsigned int b)
{
 unsigned int c;

 while (b != 0) {
  c = a;
  a = b;
  b = (c % b);
 }
 return (a);
}
