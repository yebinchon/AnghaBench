
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long time_t ;
struct tm {int tm_yday; int tm_min; int tm_sec; int tm_hour; int tm_wday; int tm_mday; int tm_mon; int tm_isdst; int tm_year; } ;
struct lc_time_T {char* date_fmt; char* c_fmt; char* ampm_fmt; char* X_fmt; char* x_fmt; int * month; int * mon; int * alt_month; int * weekday; int * wday; int pm; int am; } ;
typedef int locale_t ;


 int ERANGE ;
 int FLAG_MDAY ;
 int FLAG_MONTH ;
 int FLAG_NONE ;
 int FLAG_WDAY ;
 int FLAG_YDAY ;
 int FLAG_YEAR ;
 int TM_MONDAY ;
 int TM_SUNDAY ;
 int TM_YEAR_BASE ;
 struct lc_time_T* __get_current_time_locale (int ) ;
 char* alloca (int) ;
 int asizeof (int *) ;
 int errno ;
 int first_wday_of (int) ;
 int * gmtime_r (long*,struct tm*) ;
 int isblank_l (unsigned char,int ) ;
 int isdigit_l (unsigned char,int ) ;
 size_t isleap (int) ;
 scalar_t__ isspace_l (unsigned char,int ) ;
 int isupper_l (unsigned char,int ) ;
 int strcmp (char*,char*) ;
 int strlen (int ) ;
 int strncasecmp_l (char const*,int ,int,int ) ;
 int strncpy (char*,char const*,int) ;
 long strtol_l (char const*,char**,int,int ) ;
 char** tzname ;
 int tzset () ;

__attribute__((used)) static char *
_strptime(const char *buf, const char *fmt, struct tm *tm, int *GMTp,
  locale_t locale)
{
 char c;
 const char *ptr;
 int day_offset = -1, wday_offset;
 int week_offset;
 int i, len;
 int flags;
 int Ealternative, Oalternative;
 int century, year;
 const struct lc_time_T *tptr = __get_current_time_locale(locale);
 static int start_of_month[2][13] = {
  {0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334, 365},
  {0, 31, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335, 366}
 };

 flags = FLAG_NONE;
 century = -1;
 year = -1;

 ptr = fmt;
 while (*ptr != 0) {
  c = *ptr++;

  if (c != '%') {
   if (isspace_l((unsigned char)c, locale))
    while (*buf != 0 &&
           isspace_l((unsigned char)*buf, locale))
     buf++;
   else if (c != *buf++)
    return (((void*)0));
   continue;
  }

  Ealternative = 0;
  Oalternative = 0;
label:
  c = *ptr++;
  switch (c) {
  case '%':
   if (*buf++ != '%')
    return (((void*)0));
   break;

  case '+':
   buf = _strptime(buf, tptr->date_fmt, tm, GMTp, locale);
   if (buf == ((void*)0))
    return (((void*)0));
   flags |= FLAG_WDAY | FLAG_MONTH | FLAG_MDAY | FLAG_YEAR;
   break;

  case 'C':
   if (!isdigit_l((unsigned char)*buf, locale))
    return (((void*)0));


   len = 2;
   for (i = 0; len && *buf != 0 &&
        isdigit_l((unsigned char)*buf, locale); buf++) {
    i *= 10;
    i += *buf - '0';
    len--;
   }

   century = i;
   flags |= FLAG_YEAR;

   break;

  case 'c':
   buf = _strptime(buf, tptr->c_fmt, tm, GMTp, locale);
   if (buf == ((void*)0))
    return (((void*)0));
   flags |= FLAG_WDAY | FLAG_MONTH | FLAG_MDAY | FLAG_YEAR;
   break;

  case 'D':
   buf = _strptime(buf, "%m/%d/%y", tm, GMTp, locale);
   if (buf == ((void*)0))
    return (((void*)0));
   flags |= FLAG_MONTH | FLAG_MDAY | FLAG_YEAR;
   break;

  case 'E':
   if (Ealternative || Oalternative)
    break;
   Ealternative++;
   goto label;

  case 'O':
   if (Ealternative || Oalternative)
    break;
   Oalternative++;
   goto label;

  case 'F':
   buf = _strptime(buf, "%Y-%m-%d", tm, GMTp, locale);
   if (buf == ((void*)0))
    return (((void*)0));
   flags |= FLAG_MONTH | FLAG_MDAY | FLAG_YEAR;
   break;

  case 'R':
   buf = _strptime(buf, "%H:%M", tm, GMTp, locale);
   if (buf == ((void*)0))
    return (((void*)0));
   break;

  case 'r':
   buf = _strptime(buf, tptr->ampm_fmt, tm, GMTp, locale);
   if (buf == ((void*)0))
    return (((void*)0));
   break;

  case 'T':
   buf = _strptime(buf, "%H:%M:%S", tm, GMTp, locale);
   if (buf == ((void*)0))
    return (((void*)0));
   break;

  case 'X':
   buf = _strptime(buf, tptr->X_fmt, tm, GMTp, locale);
   if (buf == ((void*)0))
    return (((void*)0));
   break;

  case 'x':
   buf = _strptime(buf, tptr->x_fmt, tm, GMTp, locale);
   if (buf == ((void*)0))
    return (((void*)0));
   flags |= FLAG_MONTH | FLAG_MDAY | FLAG_YEAR;
   break;

  case 'j':
   if (!isdigit_l((unsigned char)*buf, locale))
    return (((void*)0));

   len = 3;
   for (i = 0; len && *buf != 0 &&
        isdigit_l((unsigned char)*buf, locale); buf++){
    i *= 10;
    i += *buf - '0';
    len--;
   }
   if (i < 1 || i > 366)
    return (((void*)0));

   tm->tm_yday = i - 1;
   flags |= FLAG_YDAY;

   break;

  case 'M':
  case 'S':
   if (*buf == 0 ||
    isspace_l((unsigned char)*buf, locale))
    break;

   if (!isdigit_l((unsigned char)*buf, locale))
    return (((void*)0));

   len = 2;
   for (i = 0; len && *buf != 0 &&
    isdigit_l((unsigned char)*buf, locale); buf++){
    i *= 10;
    i += *buf - '0';
    len--;
   }

   if (c == 'M') {
    if (i > 59)
     return (((void*)0));
    tm->tm_min = i;
   } else {
    if (i > 60)
     return (((void*)0));
    tm->tm_sec = i;
   }

   break;

  case 'H':
  case 'I':
  case 'k':
  case 'l':
   len = 2;
   if ((c == 'k' || c == 'l') &&
       isblank_l((unsigned char)*buf, locale)) {
    buf++;
    len = 1;
   }

   if (!isdigit_l((unsigned char)*buf, locale))
    return (((void*)0));

   for (i = 0; len && *buf != 0 &&
        isdigit_l((unsigned char)*buf, locale); buf++) {
    i *= 10;
    i += *buf - '0';
    len--;
   }
   if (c == 'H' || c == 'k') {
    if (i > 23)
     return (((void*)0));
   } else if (i == 0 || i > 12)
    return (((void*)0));

   tm->tm_hour = i;

   break;

  case 'p':




   if (tm->tm_hour > 12)
    return (((void*)0));

   len = strlen(tptr->am);
   if (strncasecmp_l(buf, tptr->am, len, locale) == 0) {
    if (tm->tm_hour == 12)
     tm->tm_hour = 0;
    buf += len;
    break;
   }

   len = strlen(tptr->pm);
   if (strncasecmp_l(buf, tptr->pm, len, locale) == 0) {
    if (tm->tm_hour != 12)
     tm->tm_hour += 12;
    buf += len;
    break;
   }

   return (((void*)0));

  case 'A':
  case 'a':
   for (i = 0; i < asizeof(tptr->weekday); i++) {
    len = strlen(tptr->weekday[i]);
    if (strncasecmp_l(buf, tptr->weekday[i],
      len, locale) == 0)
     break;
    len = strlen(tptr->wday[i]);
    if (strncasecmp_l(buf, tptr->wday[i],
      len, locale) == 0)
     break;
   }
   if (i == asizeof(tptr->weekday))
    return (((void*)0));

   buf += len;
   tm->tm_wday = i;
   flags |= FLAG_WDAY;
   break;

  case 'U':
  case 'W':






   if (!isdigit_l((unsigned char)*buf, locale))
    return (((void*)0));

   len = 2;
   for (i = 0; len && *buf != 0 &&
        isdigit_l((unsigned char)*buf, locale); buf++) {
    i *= 10;
    i += *buf - '0';
    len--;
   }
   if (i > 53)
    return (((void*)0));

   if (c == 'U')
    day_offset = TM_SUNDAY;
   else
    day_offset = TM_MONDAY;


   week_offset = i;

   break;

  case 'u':
  case 'w':
   if (!isdigit_l((unsigned char)*buf, locale))
    return (((void*)0));

   i = *buf++ - '0';
   if (i < 0 || i > 7 || (c == 'u' && i < 1) ||
       (c == 'w' && i > 6))
    return (((void*)0));

   tm->tm_wday = i % 7;
   flags |= FLAG_WDAY;

   break;

  case 'e':




   if (*buf != 0 &&
       isspace_l((unsigned char)*buf, locale))
          buf++;

  case 'd':
   if (!isdigit_l((unsigned char)*buf, locale))
    return (((void*)0));

   len = 2;
   for (i = 0; len && *buf != 0 &&
        isdigit_l((unsigned char)*buf, locale); buf++) {
    i *= 10;
    i += *buf - '0';
    len--;
   }
   if (i == 0 || i > 31)
    return (((void*)0));

   tm->tm_mday = i;
   flags |= FLAG_MDAY;

   break;

  case 'B':
  case 'b':
  case 'h':
   for (i = 0; i < asizeof(tptr->month); i++) {
    if (Oalternative) {
     if (c == 'B') {
      len = strlen(tptr->alt_month[i]);
      if (strncasecmp_l(buf,
        tptr->alt_month[i],
        len, locale) == 0)
       break;
     }
    } else {
     len = strlen(tptr->month[i]);
     if (strncasecmp_l(buf, tptr->month[i],
       len, locale) == 0)
      break;
    }
   }




   if (i == asizeof(tptr->month) && !Oalternative) {
    for (i = 0; i < asizeof(tptr->month); i++) {
     len = strlen(tptr->mon[i]);
     if (strncasecmp_l(buf, tptr->mon[i],
       len, locale) == 0)
      break;
    }
   }
   if (i == asizeof(tptr->month))
    return (((void*)0));

   tm->tm_mon = i;
   buf += len;
   flags |= FLAG_MONTH;

   break;

  case 'm':
   if (!isdigit_l((unsigned char)*buf, locale))
    return (((void*)0));

   len = 2;
   for (i = 0; len && *buf != 0 &&
        isdigit_l((unsigned char)*buf, locale); buf++) {
    i *= 10;
    i += *buf - '0';
    len--;
   }
   if (i < 1 || i > 12)
    return (((void*)0));

   tm->tm_mon = i - 1;
   flags |= FLAG_MONTH;

   break;

  case 's':
   {
   char *cp;
   int sverrno;
   long n;
   time_t t;

   sverrno = errno;
   errno = 0;
   n = strtol_l(buf, &cp, 10, locale);
   if (errno == ERANGE || (long)(t = n) != n) {
    errno = sverrno;
    return (((void*)0));
   }
   errno = sverrno;
   buf = cp;
   if (gmtime_r(&t, tm) == ((void*)0))
    return (((void*)0));
   *GMTp = 1;
   flags |= FLAG_YDAY | FLAG_WDAY | FLAG_MONTH |
       FLAG_MDAY | FLAG_YEAR;
   }
   break;

  case 'Y':
  case 'y':
   if (*buf == 0 ||
       isspace_l((unsigned char)*buf, locale))
    break;

   if (!isdigit_l((unsigned char)*buf, locale))
    return (((void*)0));

   len = (c == 'Y') ? 4 : 2;
   for (i = 0; len && *buf != 0 &&
        isdigit_l((unsigned char)*buf, locale); buf++) {
    i *= 10;
    i += *buf - '0';
    len--;
   }
   if (c == 'Y')
    century = i / 100;
   year = i % 100;

   flags |= FLAG_YEAR;

   break;

  case 'Z':
   {
   const char *cp;
   char *zonestr;

   for (cp = buf; *cp &&
        isupper_l((unsigned char)*cp, locale); ++cp) {
             }
   if (cp - buf) {
    zonestr = alloca(cp - buf + 1);
    strncpy(zonestr, buf, cp - buf);
    zonestr[cp - buf] = '\0';
    tzset();
    if (0 == strcmp(zonestr, "GMT") ||
        0 == strcmp(zonestr, "UTC")) {
        *GMTp = 1;
    } else if (0 == strcmp(zonestr, tzname[0])) {
        tm->tm_isdst = 0;
    } else if (0 == strcmp(zonestr, tzname[1])) {
        tm->tm_isdst = 1;
    } else {
        return (((void*)0));
    }
    buf += cp - buf;
   }
   }
   break;

  case 'z':
   {
   int sign = 1;

   if (*buf != '+') {
    if (*buf == '-')
     sign = -1;
    else
     return (((void*)0));
   }

   buf++;
   i = 0;
   for (len = 4; len > 0; len--) {
    if (isdigit_l((unsigned char)*buf, locale)) {
     i *= 10;
     i += *buf - '0';
     buf++;
    } else if (len == 2) {
     i *= 100;
     break;
    } else
     return (((void*)0));
   }

   if (i > 1400 || (sign == -1 && i > 1200) ||
       (i % 100) >= 60)
    return (((void*)0));
   tm->tm_hour -= sign * (i / 100);
   tm->tm_min -= sign * (i % 100);
   *GMTp = 1;
   }
   break;

  case 'n':
  case 't':
   while (isspace_l((unsigned char)*buf, locale))
    buf++;
   break;

  default:
   return (((void*)0));
  }
 }

 if (century != -1 || year != -1) {
  if (year == -1)
   year = 0;
  if (century == -1) {
   if (year < 69)
    year += 100;
  } else
   year += century * 100 - TM_YEAR_BASE;
  tm->tm_year = year;
 }

 if (!(flags & FLAG_YDAY) && (flags & FLAG_YEAR)) {
  if ((flags & (FLAG_MONTH | FLAG_MDAY)) ==
      (FLAG_MONTH | FLAG_MDAY)) {
   tm->tm_yday = start_of_month[isleap(tm->tm_year +
       TM_YEAR_BASE)][tm->tm_mon] + (tm->tm_mday - 1);
   flags |= FLAG_YDAY;
  } else if (day_offset != -1) {
   int tmpwday, tmpyday, fwo;

   fwo = first_wday_of(tm->tm_year + TM_YEAR_BASE);

   if (week_offset == 0 && fwo == day_offset)
    return (((void*)0));




   tmpwday = (flags & FLAG_WDAY) ? tm->tm_wday :
       day_offset;
   tmpyday = (7 - fwo + day_offset) % 7 +
       (week_offset - 1) * 7 +
       (tmpwday - day_offset + 7) % 7;

   if (tmpyday < 0) {
    if (flags & FLAG_WDAY)
     return (((void*)0));
    tmpyday = 0;
   }
   tm->tm_yday = tmpyday;
   flags |= FLAG_YDAY;
  }
 }

 if ((flags & (FLAG_YEAR | FLAG_YDAY)) == (FLAG_YEAR | FLAG_YDAY)) {
  if (!(flags & FLAG_MONTH)) {
   i = 0;
   while (tm->tm_yday >=
       start_of_month[isleap(tm->tm_year +
       TM_YEAR_BASE)][i])
    i++;
   if (i > 12) {
    i = 1;
    tm->tm_yday -=
        start_of_month[isleap(tm->tm_year +
        TM_YEAR_BASE)][12];
    tm->tm_year++;
   }
   tm->tm_mon = i - 1;
   flags |= FLAG_MONTH;
  }
  if (!(flags & FLAG_MDAY)) {
   tm->tm_mday = tm->tm_yday -
       start_of_month[isleap(tm->tm_year + TM_YEAR_BASE)]
       [tm->tm_mon] + 1;
   flags |= FLAG_MDAY;
  }
  if (!(flags & FLAG_WDAY)) {
   i = 0;
   wday_offset = first_wday_of(tm->tm_year);
   while (i++ <= tm->tm_yday) {
    if (wday_offset++ >= 6)
     wday_offset = 0;
   }
   tm->tm_wday = wday_offset;
   flags |= FLAG_WDAY;
  }
 }

 return ((char *)buf);
}
