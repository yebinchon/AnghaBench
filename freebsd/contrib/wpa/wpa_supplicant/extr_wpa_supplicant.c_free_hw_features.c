
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_modes; TYPE_2__* modes; } ;
struct wpa_supplicant {TYPE_1__ hw; } ;
struct TYPE_4__ {struct TYPE_4__* rates; struct TYPE_4__* channels; } ;


 int os_free (TYPE_2__*) ;

void free_hw_features(struct wpa_supplicant *wpa_s)
{
 int i;
 if (wpa_s->hw.modes == ((void*)0))
  return;

 for (i = 0; i < wpa_s->hw.num_modes; i++) {
  os_free(wpa_s->hw.modes[i].channels);
  os_free(wpa_s->hw.modes[i].rates);
 }

 os_free(wpa_s->hw.modes);
 wpa_s->hw.modes = ((void*)0);
}
