
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_wday; int tm_mon; int tm_mday; int tm_hour; int tm_yday; int tm_min; int tm_sec; int tm_year; } ;


 int TM_YEAR_BASE ;
 int _ALT_E ;
 int _ALT_O ;
 int _LEGAL_ALT (int) ;
 int _conv_num (unsigned char const**,int*,int,int) ;
 char* _ctloc (int ) ;
 int * abday ;
 int * abmon ;
 int * am_pm ;
 int d_fmt ;
 int d_t_fmt ;
 int * day ;
 scalar_t__ isspace (unsigned char const) ;
 int * mon ;
 size_t strlen (char*) ;
 int strncasecmp (char*,unsigned char const*,size_t) ;
 int t_fmt ;

__attribute__((used)) static char *
_strptime(const char *buf, const char *fmt, struct tm *tm, int initialize)
{
 unsigned char c;
 const unsigned char *bp;
 size_t len;
 int alt_format, i;
 static int century, relyear;

 if (initialize) {
  century = TM_YEAR_BASE;
  relyear = -1;
 }

 bp = (unsigned char *)buf;
 while ((c = *fmt) != '\0') {

  alt_format = 0;


  if (isspace(c)) {
   while (isspace(*bp))
    bp++;

   fmt++;
   continue;
  }

  if ((c = *fmt++) != '%')
   goto literal;


again: switch (c = *fmt++) {
  case '%':
literal:
  if (c != *bp++)
   return (((void*)0));

  break;





  case 'E':
   _LEGAL_ALT(0);
   alt_format |= _ALT_E;
   goto again;

  case 'O':
   _LEGAL_ALT(0);
   alt_format |= _ALT_O;
   goto again;
  case 'D':
   _LEGAL_ALT(0);
   if (!(bp = _strptime(bp, "%m/%d/%y", tm, 0)))
    return (((void*)0));
   break;

  case 'R':
   _LEGAL_ALT(0);
   if (!(bp = _strptime(bp, "%H:%M", tm, 0)))
    return (((void*)0));
   break;

  case 'r':
   _LEGAL_ALT(0);
   if (!(bp = _strptime(bp, "%I:%M:%S %p", tm, 0)))
    return (((void*)0));
   break;

  case 'T':
   _LEGAL_ALT(0);
   if (!(bp = _strptime(bp, "%H:%M:%S", tm, 0)))
    return (((void*)0));
   break;
  case 'C':
   _LEGAL_ALT(_ALT_E);
   if (!(_conv_num(&bp, &i, 0, 99)))
    return (((void*)0));

   century = i * 100;
   break;

  case 'd':
  case 'e':
   _LEGAL_ALT(_ALT_O);
   if (!(_conv_num(&bp, &tm->tm_mday, 1, 31)))
    return (((void*)0));
   break;

  case 'k':
   _LEGAL_ALT(0);

  case 'H':
   _LEGAL_ALT(_ALT_O);
   if (!(_conv_num(&bp, &tm->tm_hour, 0, 23)))
    return (((void*)0));
   break;

  case 'l':
   _LEGAL_ALT(0);

  case 'I':
   _LEGAL_ALT(_ALT_O);
   if (!(_conv_num(&bp, &tm->tm_hour, 1, 12)))
    return (((void*)0));
   break;

  case 'j':
   _LEGAL_ALT(0);
   if (!(_conv_num(&bp, &tm->tm_yday, 1, 366)))
    return (((void*)0));
   tm->tm_yday--;
   break;

  case 'M':
   _LEGAL_ALT(_ALT_O);
   if (!(_conv_num(&bp, &tm->tm_min, 0, 59)))
    return (((void*)0));
   break;

  case 'm':
   _LEGAL_ALT(_ALT_O);
   if (!(_conv_num(&bp, &tm->tm_mon, 1, 12)))
    return (((void*)0));
   tm->tm_mon--;
   break;
  case 'S':
   _LEGAL_ALT(_ALT_O);
   if (!(_conv_num(&bp, &tm->tm_sec, 0, 61)))
    return (((void*)0));
   break;

  case 'U':
  case 'W':
   _LEGAL_ALT(_ALT_O);






    if (!(_conv_num(&bp, &i, 0, 53)))
    return (((void*)0));
    break;

  case 'w':
   _LEGAL_ALT(_ALT_O);
   if (!(_conv_num(&bp, &tm->tm_wday, 0, 6)))
    return (((void*)0));
   break;

  case 'Y':
   _LEGAL_ALT(_ALT_E);
   if (!(_conv_num(&bp, &i, 0, 9999)))
    return (((void*)0));

   relyear = -1;
   tm->tm_year = i - TM_YEAR_BASE;
   break;

  case 'y':
   _LEGAL_ALT(_ALT_E | _ALT_O);
   if (!(_conv_num(&bp, &relyear, 0, 99)))
    return (((void*)0));
   break;




  case 'n':
  case 't':
   _LEGAL_ALT(0);
   while (isspace(*bp))
    bp++;
   break;


  default:
   return (((void*)0));
  }


 }





 if (relyear != -1) {
  if (century == TM_YEAR_BASE) {
   if (relyear <= 68)
    tm->tm_year = relyear + 2000 - TM_YEAR_BASE;
   else
    tm->tm_year = relyear + 1900 - TM_YEAR_BASE;
  } else {
   tm->tm_year = relyear + century - TM_YEAR_BASE;
  }
 }

 return ((char *)bp);
}
