
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
gcd(int a, int b)
{
 int c;

 c = a % b;
 while (c != 0) {
  a = b;
  b = c;
  c = a % b;
 }

 return (b);
}
