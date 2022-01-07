
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef char CHAR ;


 int LONG_MAX ;
 int abort () ;
 char to_char (int) ;

__attribute__((used)) static CHAR *
__ultoa(u_long val, CHAR *endp, int base, int octzero, const char *xdigs)
{
 CHAR *cp = endp;
 long sval;





 switch (base) {
 case 10:
  if (val < 10) {
   *--cp = to_char(val);
   return (cp);
  }






  if (val > LONG_MAX) {
   *--cp = to_char(val % 10);
   sval = val / 10;
  } else
   sval = val;
  do {
   *--cp = to_char(sval % 10);
   sval /= 10;
  } while (sval != 0);
  break;

 case 8:
  do {
   *--cp = to_char(val & 7);
   val >>= 3;
  } while (val);
  if (octzero && *cp != '0')
   *--cp = '0';
  break;

 case 16:
  do {
   *--cp = xdigs[val & 15];
   val >>= 4;
  } while (val);
  break;

 default:
  abort();
 }
 return (cp);
}
