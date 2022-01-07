
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hostapd_tx_queue_params {int burst; int cwmax; int cwmin; int aifs; } ;
struct hostapd_iface {TYPE_1__* conf; int * mconf; struct hostapd_data** bss; } ;
struct hostapd_data {TYPE_2__* conf; } ;
struct TYPE_4__ {int mesh; } ;
struct TYPE_3__ {struct hostapd_tx_queue_params* tx_queue; } ;


 int MESH_ENABLED ;
 int MSG_DEBUG ;
 int NUM_TX_QUEUES ;
 scalar_t__ hostapd_set_tx_queue_params (struct hostapd_data*,int,int ,int ,int ,int ) ;
 int wpa_printf (int ,char*,int) ;

__attribute__((used)) static void hostapd_tx_queue_params(struct hostapd_iface *iface)
{
 struct hostapd_data *hapd = iface->bss[0];
 int i;
 struct hostapd_tx_queue_params *p;






 for (i = 0; i < NUM_TX_QUEUES; i++) {
  p = &iface->conf->tx_queue[i];

  if (hostapd_set_tx_queue_params(hapd, i, p->aifs, p->cwmin,
      p->cwmax, p->burst)) {
   wpa_printf(MSG_DEBUG, "Failed to set TX queue "
       "parameters for queue %d.", i);

  }
 }
}
