
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



uint64_t
zfs_strtonum(const char *str, char **nptr)
{
 uint64_t val = 0;
 char c;
 int digit;

 while ((c = *str) != '\0') {
  if (c >= '0' && c <= '9')
   digit = c - '0';
  else if (c >= 'a' && c <= 'f')
   digit = 10 + c - 'a';
  else
   break;

  val *= 16;
  val += digit;

  str++;
 }

 if (nptr)
  *nptr = (char *)str;

 return (val);
}
