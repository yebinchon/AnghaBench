
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int absolute; } ;
typedef TYPE_1__ isc_time_t ;
struct TYPE_8__ {int wMilliseconds; } ;
typedef TYPE_2__ SYSTEMTIME ;
typedef int FILETIME ;


 scalar_t__ FileTimeToLocalFileTime (int *,int *) ;
 scalar_t__ FileTimeToSystemTime (int *,TYPE_2__*) ;
 int GetDateFormat (int ,int ,TYPE_2__*,char*,char*,int) ;
 int GetTimeFormat (int ,int,TYPE_2__*,int *,char*,int) ;
 int LOCALE_USER_DEFAULT ;
 int REQUIRE (int) ;
 int TIME_FORCE24HOURFORMAT ;
 int TIME_NOTIMEMARKER ;
 int snprintf (char*,unsigned int,char const*,...) ;

void
isc_time_formattimestamp(const isc_time_t *t, char *buf, unsigned int len) {
 FILETIME localft;
 SYSTEMTIME st;
 char DateBuf[50];
 char TimeBuf[50];

 static const char badtime[] = "99-Bad-9999 99:99:99.999";

 REQUIRE(len > 0);
 if (FileTimeToLocalFileTime(&t->absolute, &localft) &&
     FileTimeToSystemTime(&localft, &st)) {
  GetDateFormat(LOCALE_USER_DEFAULT, 0, &st, "dd-MMM-yyyy",
         DateBuf, 50);
  GetTimeFormat(LOCALE_USER_DEFAULT, TIME_NOTIMEMARKER|
         TIME_FORCE24HOURFORMAT, &st, ((void*)0), TimeBuf, 50);

  snprintf(buf, len, "%s %s.%03u", DateBuf, TimeBuf,
    st.wMilliseconds);

 } else
  snprintf(buf, len, badtime);
}
