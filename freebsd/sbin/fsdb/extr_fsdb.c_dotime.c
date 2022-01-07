
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; int tm_isdst; } ;
typedef int int32_t ;


 int VAL () ;
 int mktime (struct tm*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 int strtoul (char*,char**,int ) ;
 int warnx (char*) ;

int
dotime(char *name, time_t *secp, int32_t *nsecp)
{
    char *p, *val;
    struct tm t;
    int32_t nsec;
    p = strchr(name, '.');
    if (p) {
 *p = '\0';
 nsec = strtoul(++p, &val, 0);
 if (val == p || *val != '\0' || nsec >= 1000000000 || nsec < 0) {
  warnx("invalid nanoseconds");
  goto badformat;
 }
    } else
 nsec = 0;
    if (strlen(name) != 14) {
badformat:
 warnx("date format: YYYYMMDDHHMMSS[.nsec]");
 return 1;
    }
    *nsecp = nsec;

    for (p = name; *p; p++)
 if (*p < '0' || *p > '9')
     goto badformat;

    p = name;

    t.tm_year = ((*p++) - '0');
    t.tm_year = ((*p++) - '0') + t.tm_year * 10;
    t.tm_year = ((*p++) - '0') + t.tm_year * 10;
    t.tm_year = ((*p++) - '0') + t.tm_year * 10 - 1900;
    t.tm_mon = ((*p++) - '0');
    t.tm_mon = ((*p++) - '0') + t.tm_mon * 10 - 1;
    t.tm_mday = ((*p++) - '0');
    t.tm_mday = ((*p++) - '0') + t.tm_mday * 10;
    t.tm_hour = ((*p++) - '0');
    t.tm_hour = ((*p++) - '0') + t.tm_hour * 10;
    t.tm_min = ((*p++) - '0');
    t.tm_min = ((*p++) - '0') + t.tm_min * 10;
    t.tm_sec = ((*p++) - '0');
    t.tm_sec = ((*p++) - '0') + t.tm_sec * 10;
    t.tm_isdst = -1;

    *secp = mktime(&t);
    if (*secp == -1) {
 warnx("date/time out of range");
 return 1;
    }
    return 0;
}
