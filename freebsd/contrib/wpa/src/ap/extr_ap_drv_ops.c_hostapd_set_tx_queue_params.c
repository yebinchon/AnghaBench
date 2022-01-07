
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* set_tx_queue_params ) (int ,int,int,int,int,int) ;} ;


 int stub1 (int ,int,int,int,int,int) ;

int hostapd_set_tx_queue_params(struct hostapd_data *hapd, int queue, int aifs,
    int cw_min, int cw_max, int burst_time)
{
 if (hapd->driver == ((void*)0) || hapd->driver->set_tx_queue_params == ((void*)0))
  return 0;
 return hapd->driver->set_tx_queue_params(hapd->drv_priv, queue, aifs,
       cw_min, cw_max, burst_time);
}
