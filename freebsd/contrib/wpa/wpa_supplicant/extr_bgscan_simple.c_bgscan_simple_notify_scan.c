
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_scan_results {int dummy; } ;
struct bgscan_simple_data {int scan_interval; } ;


 int MSG_DEBUG ;
 int bgscan_simple_timeout ;
 int eloop_cancel_timeout (int ,struct bgscan_simple_data*,int *) ;
 int eloop_register_timeout (int ,int ,int ,struct bgscan_simple_data*,int *) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int bgscan_simple_notify_scan(void *priv,
         struct wpa_scan_results *scan_res)
{
 struct bgscan_simple_data *data = priv;

 wpa_printf(MSG_DEBUG, "bgscan simple: scan result notification");

 eloop_cancel_timeout(bgscan_simple_timeout, data, ((void*)0));
 eloop_register_timeout(data->scan_interval, 0, bgscan_simple_timeout,
          data, ((void*)0));
 return 0;
}
