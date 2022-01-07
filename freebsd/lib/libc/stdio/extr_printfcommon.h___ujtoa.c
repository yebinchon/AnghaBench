
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uintmax_t ;
typedef int u_long ;
typedef int intmax_t ;
typedef char CHAR ;


 scalar_t__ INTMAX_MAX ;
 scalar_t__ ULONG_MAX ;
 char* __ultoa (int ,char*,int,int,char const*) ;
 int abort () ;
 char to_char (scalar_t__) ;

__attribute__((used)) static CHAR *
__ujtoa(uintmax_t val, CHAR *endp, int base, int octzero, const char *xdigs)
{
 CHAR *cp = endp;
 intmax_t sval;



 if (val <= ULONG_MAX)
  return (__ultoa((u_long)val, endp, base, octzero, xdigs));
 switch (base) {
 case 10:
  if (val < 10) {
   *--cp = to_char(val % 10);
   return (cp);
  }
  if (val > INTMAX_MAX) {
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
