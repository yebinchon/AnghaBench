
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int speed_t ;


 int * PC ;
 int cfgetospeed (int *) ;
 scalar_t__ isdigit (char const) ;
 int putchr (int ) ;
 int puts (char const*) ;
 int tmode ;

__attribute__((used)) static void
putpad(const char *s)
{
 int pad = 0;
 speed_t ospeed = cfgetospeed(&tmode);

 if (isdigit(*s)) {
  while (isdigit(*s)) {
   pad *= 10;
   pad += *s++ - '0';
  }
  pad *= 10;
  if (*s == '.' && isdigit(s[1])) {
   pad += s[1] - '0';
   s += 2;
  }
 }

 puts(s);




 if (pad == 0 || ospeed <= 0)
  return;







 pad = (pad * ospeed + 50000) / 100000;
 while (pad--)
  putchr(*PC);
}
