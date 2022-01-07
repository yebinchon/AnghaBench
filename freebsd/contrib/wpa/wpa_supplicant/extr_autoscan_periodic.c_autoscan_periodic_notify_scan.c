
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_scan_results {int dummy; } ;
struct autoscan_periodic_data {int periodic_interval; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int autoscan_periodic_notify_scan(void *priv,
      struct wpa_scan_results *scan_res)
{
 struct autoscan_periodic_data *data = priv;

 wpa_printf(MSG_DEBUG, "autoscan periodic: scan result notification");

 return data->periodic_interval;
}
