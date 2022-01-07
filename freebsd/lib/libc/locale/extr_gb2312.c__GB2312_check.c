
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;



__attribute__((used)) static int
_GB2312_check(const char *str, size_t n)
{
 const u_char *s = (const u_char *)str;

 if (n == 0)

  return (-2);
 if (s[0] >= 0xa1 && s[0] <= 0xfe) {
  if (n < 2)

   return (-2);
  if (s[1] < 0xa1 || s[1] > 0xfe)

   return (-1);
  return (2);
 } else if (s[0] & 0x80) {

  return (-1);
 }
 return (1);
}
