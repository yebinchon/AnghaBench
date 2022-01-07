
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int scan_interval; scalar_t__ sched_scan_plans_num; int * sched_scan_plans; int * autoscan_priv; TYPE_1__* autoscan; } ;
struct TYPE_2__ {int (* deinit ) (int *) ;int name; } ;


 int MSG_DEBUG ;
 int os_free (int *) ;
 int stub1 (int *) ;
 int wpa_printf (int ,char*,int ) ;

void autoscan_deinit(struct wpa_supplicant *wpa_s)
{
 if (wpa_s->autoscan && wpa_s->autoscan_priv) {
  wpa_printf(MSG_DEBUG, "autoscan: Deinitializing module '%s'",
      wpa_s->autoscan->name);
  wpa_s->autoscan->deinit(wpa_s->autoscan_priv);
  wpa_s->autoscan = ((void*)0);
  wpa_s->autoscan_priv = ((void*)0);

  wpa_s->scan_interval = 5;

  os_free(wpa_s->sched_scan_plans);
  wpa_s->sched_scan_plans = ((void*)0);
  wpa_s->sched_scan_plans_num = 0;
 }
}
