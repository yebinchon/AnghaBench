
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sec; } ;
struct sta_info {TYPE_1__ connected_time; } ;
struct os_reltime {scalar_t__ sec; } ;


 int os_reltime_age (TYPE_1__*,struct os_reltime*) ;
 int os_snprintf (char*,size_t,char*,unsigned int) ;
 scalar_t__ os_snprintf_error (size_t,int) ;

__attribute__((used)) static int hostapd_get_sta_conn_time(struct sta_info *sta,
         char *buf, size_t buflen)
{
 struct os_reltime age;
 int ret;

 if (!sta->connected_time.sec)
  return 0;

 os_reltime_age(&sta->connected_time, &age);

 ret = os_snprintf(buf, buflen, "connected_time=%u\n",
     (unsigned int) age.sec);
 if (os_snprintf_error(buflen, ret))
  return 0;
 return ret;
}
