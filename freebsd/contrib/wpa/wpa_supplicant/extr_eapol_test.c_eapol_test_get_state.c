
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int wpa_state; } ;
struct eapol_test_data {struct wpa_supplicant* wpa_s; } ;
typedef enum wpa_states { ____Placeholder_wpa_states } wpa_states ;



__attribute__((used)) static enum wpa_states eapol_test_get_state(void *ctx)
{
 struct eapol_test_data *e = ctx;
 struct wpa_supplicant *wpa_s = e->wpa_s;

 return wpa_s->wpa_state;
}
