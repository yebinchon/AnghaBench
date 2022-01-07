
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* cgetcap (char*,char const*,char) ;

int
cgetnum(char *buf, const char *cap, long *num)
{
 long n;
 int base, digit;
 char *bp;




 bp = cgetcap(buf, cap, '#');
 if (bp == ((void*)0))
  return (-1);







 if (*bp == '0') {
  bp++;
  if (*bp == 'x' || *bp == 'X') {
   bp++;
   base = 16;
  } else
   base = 8;
 } else
  base = 10;




 n = 0;
 for (;;) {
  if ('0' <= *bp && *bp <= '9')
   digit = *bp - '0';
  else if ('a' <= *bp && *bp <= 'f')
   digit = 10 + *bp - 'a';
  else if ('A' <= *bp && *bp <= 'F')
   digit = 10 + *bp - 'A';
  else
   break;

  if (digit >= base)
   break;

  n = n * base + digit;
  bp++;
 }




 *num = n;
 return (0);
}
