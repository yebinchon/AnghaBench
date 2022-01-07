
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;


 char hex2ascii (int) ;
 char toupper (char) ;

__attribute__((used)) static char *
ksprintn(char *nbuf, uintmax_t num, int base, int *lenp, int upper)
{
 char *p, c;

 p = nbuf;
 *p = '\0';
 do {
  c = hex2ascii(num % base);
  *++p = upper ? toupper(c) : c;
 } while (num /= base);
 if (lenp)
  *lenp = p - nbuf;
 return (p);
}
