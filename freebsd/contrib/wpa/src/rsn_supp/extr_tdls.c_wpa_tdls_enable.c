
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_sm {int tdls_disabled; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*,char*) ;

void wpa_tdls_enable(struct wpa_sm *sm, int enabled)
{
 wpa_printf(MSG_DEBUG, "TDLS: %s", enabled ? "enabled" : "disabled");
 sm->tdls_disabled = !enabled;
}
