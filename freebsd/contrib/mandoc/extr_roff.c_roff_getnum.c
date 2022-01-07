
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ROFFNUM_SCALE ;
 int ROFFNUM_WHITE ;
 scalar_t__ isdigit (unsigned char) ;
 scalar_t__ isspace (unsigned char) ;

__attribute__((used)) static int
roff_getnum(const char *v, int *pos, int *res, int flags)
{
 int myres, scaled, n, p;

 if (((void*)0) == res)
  res = &myres;

 p = *pos;
 n = v[p] == '-';
 if (n || v[p] == '+')
  p++;

 if (flags & ROFFNUM_WHITE)
  while (isspace((unsigned char)v[p]))
   p++;

 for (*res = 0; isdigit((unsigned char)v[p]); p++)
  *res = 10 * *res + v[p] - '0';
 if (p == *pos + n)
  return 0;

 if (n)
  *res = -*res;



 switch (v[p]) {
 case 'f':
  scaled = *res * 65536;
  break;
 case 'i':
  scaled = *res * 240;
  break;
 case 'c':
  scaled = *res * 240 / 2.54;
  break;
 case 'v':
 case 'P':
  scaled = *res * 40;
  break;
 case 'm':
 case 'n':
  scaled = *res * 24;
  break;
 case 'p':
  scaled = *res * 10 / 3;
  break;
 case 'u':
  scaled = *res;
  break;
 case 'M':
  scaled = *res * 6 / 25;
  break;
 default:
  scaled = *res;
  p--;
  break;
 }
 if (flags & ROFFNUM_SCALE)
  *res = scaled;

 *pos = p + 1;
 return 1;
}
