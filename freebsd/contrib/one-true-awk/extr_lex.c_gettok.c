
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FATAL (char*,char*) ;
 int adjbuf (char**,int*,int,int,char**,char*) ;
 int input () ;
 scalar_t__ isalnum (int) ;
 scalar_t__ isalpha (int) ;
 scalar_t__ isdigit (int) ;
 int strtod (char*,char**) ;
 int unput (int) ;
 int unputstr (char*) ;

int gettok(char **pbuf, int *psz)
{
 int c, retc;
 char *buf = *pbuf;
 int sz = *psz;
 char *bp = buf;

 c = input();
 if (c == 0)
  return 0;
 buf[0] = c;
 buf[1] = 0;
 if (!isalnum(c) && c != '.' && c != '_')
  return c;

 *bp++ = c;
 if (isalpha(c) || c == '_') {
  for ( ; (c = input()) != 0; ) {
   if (bp-buf >= sz)
    if (!adjbuf(&buf, &sz, bp-buf+2, 100, &bp, "gettok"))
     FATAL( "out of space for name %.10s...", buf );
   if (isalnum(c) || c == '_')
    *bp++ = c;
   else {
    *bp = 0;
    unput(c);
    break;
   }
  }
  *bp = 0;
  retc = 'a';
 } else {
  char *rem;

  for ( ; (c = input()) != 0; ) {
   if (bp-buf >= sz)
    if (!adjbuf(&buf, &sz, bp-buf+2, 100, &bp, "gettok"))
     FATAL( "out of space for number %.10s...", buf );
   if (isdigit(c) || c == 'e' || c == 'E'
     || c == '.' || c == '+' || c == '-')
    *bp++ = c;
   else {
    unput(c);
    break;
   }
  }
  *bp = 0;
  strtod(buf, &rem);
  if (rem == buf) {
   buf[1] = 0;
   retc = buf[0];
   unputstr(rem+1);
  } else {
   unputstr(rem);
   rem[0] = 0;
   retc = '0';
  }
 }
 *pbuf = buf;
 *psz = sz;
 return retc;
}
