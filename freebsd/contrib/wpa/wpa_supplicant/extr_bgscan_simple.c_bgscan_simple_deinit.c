
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bgscan_simple_data {int wpa_s; scalar_t__ signal_threshold; } ;


 int bgscan_simple_timeout ;
 int eloop_cancel_timeout (int ,struct bgscan_simple_data*,int *) ;
 int os_free (struct bgscan_simple_data*) ;
 int wpa_drv_signal_monitor (int ,int ,int ) ;

__attribute__((used)) static void bgscan_simple_deinit(void *priv)
{
 struct bgscan_simple_data *data = priv;
 eloop_cancel_timeout(bgscan_simple_timeout, data, ((void*)0));
 if (data->signal_threshold)
  wpa_drv_signal_monitor(data->wpa_s, 0, 0);
 os_free(data);
}
