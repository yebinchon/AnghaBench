
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wpa_states { ____Placeholder_wpa_states } wpa_states ;


 int wpa_supplicant_set_state (void*,int) ;

__attribute__((used)) static void _wpa_supplicant_set_state(void *wpa_s, enum wpa_states state)
{
 wpa_supplicant_set_state(wpa_s, state);
}
