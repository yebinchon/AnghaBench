
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intmax_t ;


 int EINVAL ;
 int errno ;

__attribute__((used)) static int
numfromstr(const char *str, intmax_t minnum, intmax_t maxnum, intmax_t *nump)
{
 intmax_t digit, num;

 if (str[0] == '\0')
  goto invalid;
 num = 0;
 for (; *str != '\0'; str++) {
  if (*str < '0' || *str > '9')
   goto invalid;
  digit = *str - '0';
  if (num > num * 10 + digit)
   goto invalid;
  num = num * 10 + digit;
  if (num > maxnum)
   goto invalid;
 }
 if (num < minnum)
  goto invalid;
 *nump = num;
 return (0);
invalid:
 errno = EINVAL;
 return (-1);
}
