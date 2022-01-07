
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_state_machine {int pmk_len; int const* PMK; } ;



const u8 * wpa_auth_get_pmk(struct wpa_state_machine *sm, int *len)
{
 if (!sm)
  return ((void*)0);
 *len = sm->pmk_len;
 return sm->PMK;
}
