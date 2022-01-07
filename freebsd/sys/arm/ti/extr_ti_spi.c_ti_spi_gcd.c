
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
ti_spi_gcd(int a, int b)
{
 int m;

 while ((m = a % b) != 0) {
  a = b;
  b = m;
 }

 return (b);
}
