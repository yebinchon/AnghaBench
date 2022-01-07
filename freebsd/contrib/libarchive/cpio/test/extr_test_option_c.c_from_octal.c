
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
from_octal(const char *p, size_t l)
{
 int r = 0;

 while (l > 0) {
  r *= 8;
  r += *p - '0';
  --l;
  ++p;
 }
 return (r);
}
