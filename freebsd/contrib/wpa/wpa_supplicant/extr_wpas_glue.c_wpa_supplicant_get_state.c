
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int wpa_state; } ;
typedef enum wpa_states { ____Placeholder_wpa_states } wpa_states ;



__attribute__((used)) static enum wpa_states wpa_supplicant_get_state(struct wpa_supplicant *wpa_s)
{
 return wpa_s->wpa_state;
}
