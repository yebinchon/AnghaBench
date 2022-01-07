
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long DAYS ;
 scalar_t__ ERANGE ;
 long HOURS ;
 long LONG_MAX ;
 long LONG_MIN ;
 long MINUTES ;
 long WEEKS ;
 scalar_t__ errno ;
 long strtol (char const*,char**,int) ;

long
convtime(const char *s)
{
 long total, secs, multiplier = 1;
 const char *p;
 char *endp;

 errno = 0;
 total = 0;
 p = s;

 if (p == ((void*)0) || *p == '\0')
  return -1;

 while (*p) {
  secs = strtol(p, &endp, 10);
  if (p == endp ||
      (errno == ERANGE && (secs == LONG_MIN || secs == LONG_MAX)) ||
      secs < 0)
   return -1;

  switch (*endp++) {
  case '\0':
   endp--;
   break;
  case 's':
  case 'S':
   break;
  case 'm':
  case 'M':
   multiplier = MINUTES;
   break;
  case 'h':
  case 'H':
   multiplier = HOURS;
   break;
  case 'd':
  case 'D':
   multiplier = DAYS;
   break;
  case 'w':
  case 'W':
   multiplier = WEEKS;
   break;
  default:
   return -1;
  }
  if (secs >= LONG_MAX / multiplier)
   return -1;
  secs *= multiplier;
  if (total >= LONG_MAX - secs)
   return -1;
  total += secs;
  if (total < 0)
   return -1;
  p = endp;
 }

 return total;
}
