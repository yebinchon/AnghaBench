
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wpa_states { ____Placeholder_wpa_states } wpa_states ;


 int wpa_supplicant_get_state (void*) ;

__attribute__((used)) static enum wpa_states _wpa_supplicant_get_state(void *wpa_s)
{
 return wpa_supplicant_get_state(wpa_s);
}
