
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int absolute; } ;
typedef TYPE_1__ isc_time_t ;
typedef int SYSTEMTIME ;


 scalar_t__ FileTimeToSystemTime (int *,int *) ;
 int GetDateFormat (int ,int ,int *,char*,char*,int) ;
 int GetTimeFormat (int ,int,int *,char*,char*,int) ;
 int LOCALE_NEUTRAL ;
 int REQUIRE (int) ;
 int TIME_FORCE24HOURFORMAT ;
 int TIME_NOTIMEMARKER ;
 int snprintf (char*,unsigned int,char*,char*,char*) ;

void
isc_time_formatISO8601(const isc_time_t *t, char *buf, unsigned int len) {
 SYSTEMTIME st;
 char DateBuf[50];
 char TimeBuf[50];



 REQUIRE(len > 0);
 if (FileTimeToSystemTime(&t->absolute, &st)) {
  GetDateFormat(LOCALE_NEUTRAL, 0, &st, "yyyy-MM-dd",
         DateBuf, 50);
  GetTimeFormat(LOCALE_NEUTRAL,
         TIME_NOTIMEMARKER | TIME_FORCE24HOURFORMAT,
         &st, "hh':'mm':'ss", TimeBuf, 50);
  snprintf(buf, len, "%s%sZ", DateBuf, TimeBuf);
 } else {
  buf[0] = 0;
 }
}
