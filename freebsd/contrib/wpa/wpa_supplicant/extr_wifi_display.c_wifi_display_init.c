
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_global {int wifi_display; } ;



int wifi_display_init(struct wpa_global *global)
{
 global->wifi_display = 1;
 return 0;
}
