
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int time_t ;
struct tm {int tm_wday; int tm_yday; scalar_t__ tm_isdst; } ;


 int interpret_dos_date (scalar_t__,struct tm*) ;
 int mktime (struct tm*) ;

__attribute__((used)) static time_t
int_unix_date(uint32_t dos_date)
{
    struct tm t;

    if (dos_date == 0)
 return(0);

    interpret_dos_date(dos_date, &t);
    t.tm_wday = 1;
    t.tm_yday = 1;
    t.tm_isdst = 0;

    return (mktime(&t));
}
