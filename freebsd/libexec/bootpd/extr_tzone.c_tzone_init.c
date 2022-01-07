
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_gmtoff; } ;


 int LOG_ERR ;
 struct tm* localtime (int *) ;
 int report (int ,char*) ;
 int secondswest ;
 int time (int *) ;
 int timezone ;

void
tzone_init()
{




 struct tm *tm;
 time_t now;

 (void)time(&now);
 if ((tm = localtime(&now)) == ((void*)0)) {
  secondswest = 0;
  report(LOG_ERR, "localtime() failed");
 } else {
  secondswest = -tm->tm_gmtoff;
 }

}
