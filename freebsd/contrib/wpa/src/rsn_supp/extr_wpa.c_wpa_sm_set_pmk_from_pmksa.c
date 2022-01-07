
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_sm {int pmk; scalar_t__ pmk_len; TYPE_1__* cur_pmksa; } ;
struct TYPE_2__ {int pmk; scalar_t__ pmk_len; } ;


 int MSG_DEBUG ;
 int PMK_LEN_MAX ;
 int os_memcpy (int ,int ,scalar_t__) ;
 int os_memset (int ,int ,int ) ;
 int wpa_hexdump_key (int ,char*,int ,scalar_t__) ;
 int wpa_printf (int ,char*) ;

void wpa_sm_set_pmk_from_pmksa(struct wpa_sm *sm)
{
 if (sm == ((void*)0))
  return;

 if (sm->cur_pmksa) {
  wpa_hexdump_key(MSG_DEBUG,
    "WPA: Set PMK based on current PMKSA",
    sm->cur_pmksa->pmk, sm->cur_pmksa->pmk_len);
  sm->pmk_len = sm->cur_pmksa->pmk_len;
  os_memcpy(sm->pmk, sm->cur_pmksa->pmk, sm->pmk_len);
 } else {
  wpa_printf(MSG_DEBUG, "WPA: No current PMKSA - clear PMK");
  sm->pmk_len = 0;
  os_memset(sm->pmk, 0, PMK_LEN_MAX);
 }
}
