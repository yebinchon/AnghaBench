
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct os_tm {int sec; int min; int hour; int day; int month; int year; } ;
struct os_time {int sec; } ;
struct hostapd_data {int time_update_counter; int * time_adv; TYPE_1__* conf; } ;
struct TYPE_2__ {int time_advertisement; } ;


 int WLAN_EID_TIME_ADVERTISEMENT ;
 int WPA_PUT_LE16 (int *,int ) ;
 scalar_t__ os_get_time (struct os_time*) ;
 scalar_t__ os_gmtime (int ,struct os_tm*) ;
 int * wpabuf_alloc (int const) ;
 int * wpabuf_mhead_u8 (int *) ;
 int * wpabuf_put (int *,int const) ;

int hostapd_update_time_adv(struct hostapd_data *hapd)
{
 const int elen = 2 + 1 + 10 + 5 + 1;
 struct os_time t;
 struct os_tm tm;
 u8 *pos;

 if (hapd->conf->time_advertisement != 2)
  return 0;

 if (os_get_time(&t) < 0 || os_gmtime(t.sec, &tm) < 0)
  return -1;

 if (!hapd->time_adv) {
  hapd->time_adv = wpabuf_alloc(elen);
  if (hapd->time_adv == ((void*)0))
   return -1;
  pos = wpabuf_put(hapd->time_adv, elen);
 } else
  pos = wpabuf_mhead_u8(hapd->time_adv);

 *pos++ = WLAN_EID_TIME_ADVERTISEMENT;
 *pos++ = 1 + 10 + 5 + 1;

 *pos++ = 2;



 WPA_PUT_LE16(pos, tm.year);
 pos += 2;
 *pos++ = tm.month;
 *pos++ = tm.day;
 *pos++ = tm.hour;
 *pos++ = tm.min;
 *pos++ = tm.sec;
 WPA_PUT_LE16(pos, 0);
 pos += 2;
 *pos++ = 0;



 *pos++ = 0;
 *pos++ = 0;
 *pos++ = 0;
 *pos++ = 0;
 *pos++ = 0;

 *pos++ = hapd->time_update_counter++;

 return 0;
}
