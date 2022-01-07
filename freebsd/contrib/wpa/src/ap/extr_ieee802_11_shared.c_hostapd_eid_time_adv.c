
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_data {int * time_adv; TYPE_1__* conf; } ;
struct TYPE_2__ {int time_advertisement; } ;


 scalar_t__ hostapd_update_time_adv (struct hostapd_data*) ;
 int os_memcpy (int *,int ,int ) ;
 int wpabuf_head (int *) ;
 int wpabuf_len (int *) ;

u8 * hostapd_eid_time_adv(struct hostapd_data *hapd, u8 *eid)
{
 if (hapd->conf->time_advertisement != 2)
  return eid;

 if (hapd->time_adv == ((void*)0) &&
     hostapd_update_time_adv(hapd) < 0)
  return eid;

 if (hapd->time_adv == ((void*)0))
  return eid;

 os_memcpy(eid, wpabuf_head(hapd->time_adv),
    wpabuf_len(hapd->time_adv));
 eid += wpabuf_len(hapd->time_adv);

 return eid;
}
