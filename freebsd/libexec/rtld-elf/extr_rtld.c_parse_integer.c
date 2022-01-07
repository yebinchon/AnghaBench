
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
parse_integer(const char *str)
{
 static const int RADIX = 10;
 const char *orig;
 int n;
 char c;

 orig = str;
 n = 0;
 for (c = *str; c != '\0'; c = *++str) {
  if (c < '0' || c > '9')
   return (-1);

  n *= RADIX;
  n += c - '0';
 }


 if (str == orig)
  return (-1);
 return (n);
}
