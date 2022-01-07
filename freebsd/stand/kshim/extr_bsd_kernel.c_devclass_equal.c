
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static uint8_t
devclass_equal(const char *a, const char *b)
{
 char ta, tb;

 if (a == b)
  return (1);

 while (1) {
  ta = *a;
  tb = *b;
  if (ta != tb)
   return (0);
  if (ta == 0)
   break;
  a++;
  b++;
 }
 return (1);
}
