
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_wday; int tm_mon; int tm_year; int tm_mday; int tm_hour; int tm_yday; int tm_min; int tm_sec; } ;


 int TM_YEAR_BASE ;
 int abb_months ;
 int abb_weekdays ;
 int ampm ;
 int full_months ;
 int full_weekdays ;
 scalar_t__ isspace (unsigned char) ;
 int match_string (char const**,int ) ;
 int str2int (char const**,int) ;

char *
unbound_strptime(const char *s, const char *format, struct tm *tm)
{
 int c, ret;
 int split_year = 0;

 while ((c = *format) != '\0') {

  if (isspace((unsigned char)c)) {



   while (isspace((unsigned char)*s))
    s++;
  }
  else if (c == '%') {
   format++;
   c = *format;
   switch (c) {
    case '%':
     if (*s != c) {
      return ((void*)0);
     }
     s++;
     break;
    case 'a':
    case 'A':
     ret = match_string(&s, full_weekdays);
     if (ret < 0)
      ret = match_string(&s, abb_weekdays);
     if (ret < 0) {
      return ((void*)0);
     }
     tm->tm_wday = ret;
     break;
    case 'b':
    case 'B':
    case 'h':
     ret = match_string(&s, full_months);
     if (ret < 0)
      ret = match_string(&s, abb_months);
     if (ret < 0) {
      return ((void*)0);
     }
     tm->tm_mon = ret;
     break;
    case 'c':
     if (!(s = unbound_strptime(s, "%x %X", tm))) {
      return ((void*)0);
     }
     break;
    case 'C':
     ret = str2int(&s, 2);
     if (ret < 0 || ret > 99) {
      return ((void*)0);
     }

     if (split_year) {
      tm->tm_year = ret*100 + (tm->tm_year%100);
     }
     else {
      tm->tm_year = ret*100 - TM_YEAR_BASE;
      split_year = 1;
     }
     break;
    case 'd':
    case 'e':
     ret = str2int(&s, 2);
     if (ret < 1 || ret > 31) {
      return ((void*)0);
     }
     tm->tm_mday = ret;
     break;
    case 'D':
     if (!(s = unbound_strptime(s, "%m/%d/%y", tm))) {
      return ((void*)0);
     }
     break;
    case 'H':
     ret = str2int(&s, 2);
     if (ret < 0 || ret > 23) {
      return ((void*)0);
     }
     tm->tm_hour = ret;
     break;
    case 'I':
     ret = str2int(&s, 2);
     if (ret < 1 || ret > 12) {
      return ((void*)0);
     }
     if (ret == 12)
      ret = 0;
     tm->tm_hour = ret;
     break;
    case 'j':
     ret = str2int(&s, 2);
     if (ret < 1 || ret > 366) {
      return ((void*)0);
     }
     tm->tm_yday = ret;
     break;
    case 'm':
     ret = str2int(&s, 2);
     if (ret < 1 || ret > 12) {
      return ((void*)0);
     }

     tm->tm_mon = (ret-1);
     break;
    case 'M':
     ret = str2int(&s, 2);
     if (ret < 0 || ret > 59) {
      return ((void*)0);
     }
     tm->tm_min = ret;
     break;
    case 'n':
    case 't':
     while (isspace((unsigned char)*s))
      s++;
     break;
    case 'p':
     ret = match_string(&s, ampm);
     if (ret < 0) {
      return ((void*)0);
     }
     if (tm->tm_hour < 0 || tm->tm_hour > 11) {
      return ((void*)0);
     }

     if (ret == 1)
      tm->tm_hour += 12;
     break;
    case 'r':
     if (!(s = unbound_strptime(s, "%I:%M:%S %p", tm))) {
      return ((void*)0);
     }
     break;
    case 'R':
     if (!(s = unbound_strptime(s, "%H:%M", tm))) {
      return ((void*)0);
     }
     break;
    case 'S':
     ret = str2int(&s, 2);


     if (ret < 0 || ret > 60) {
      return ((void*)0);
     }
     tm->tm_sec = ret;
     break;
    case 'T':
     if (!(s = unbound_strptime(s, "%H:%M:%S", tm))) {
      return ((void*)0);
     }
     break;
    case 'U':
     ret = str2int(&s, 2);
     if (ret < 0 || ret > 53) {
      return ((void*)0);
     }



     break;
    case 'w':
     ret = str2int(&s, 1);
     if (ret < 0 || ret > 6) {
      return ((void*)0);
     }
     tm->tm_wday = ret;
     break;
    case 'W':
     ret = str2int(&s, 2);
     if (ret < 0 || ret > 53) {
      return ((void*)0);
     }



     break;
    case 'x':
     if (!(s = unbound_strptime(s, "%m/%d/%y", tm))) {
      return ((void*)0);
     }
     break;
    case 'X':
     if (!(s = unbound_strptime(s, "%H:%M:%S", tm))) {
      return ((void*)0);
     }
     break;
    case 'y':
     ret = str2int(&s, 2);
     if (ret < 0 || ret > 99) {
      return ((void*)0);
     }
     if (split_year) {
      tm->tm_year = ((tm->tm_year/100) * 100) + ret;
     }
     else {
      split_year = 1;





      if (ret < 69)
       ret += 100;
      tm->tm_year = ret;
     }
     break;
    case 'Y':
     ret = str2int(&s, 4);
     if (ret < 0 || ret > 9999) {
      return ((void*)0);
     }
     tm->tm_year = ret - TM_YEAR_BASE;
     break;
    case '\0':
    default:
     return ((void*)0);
     break;
   }
  }
  else {

   if (*s != c)
    return ((void*)0);
   s++;
  }

  format++;
 }


 return (char*) s;
}
