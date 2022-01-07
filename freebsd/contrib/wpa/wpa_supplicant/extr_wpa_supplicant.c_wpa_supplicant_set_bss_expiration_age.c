
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* conf; } ;
struct TYPE_2__ {unsigned int bss_expiration_age; } ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int wpa_msg (struct wpa_supplicant*,int ,char*,unsigned int) ;

int wpa_supplicant_set_bss_expiration_age(struct wpa_supplicant *wpa_s,
       unsigned int bss_expire_age)
{
 if (bss_expire_age < 10) {
  wpa_msg(wpa_s, MSG_ERROR, "Invalid bss expiration age %u",
   bss_expire_age);
  return -1;
 }
 wpa_msg(wpa_s, MSG_DEBUG, "Setting bss expiration age: %d sec",
  bss_expire_age);
 wpa_s->conf->bss_expiration_age = bss_expire_age;

 return 0;
}
