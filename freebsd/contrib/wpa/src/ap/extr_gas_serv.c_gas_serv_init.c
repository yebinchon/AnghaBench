
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {struct hostapd_data* public_action_cb2_ctx; int public_action_cb2; } ;


 int gas_serv_rx_public_action ;

int gas_serv_init(struct hostapd_data *hapd)
{
 hapd->public_action_cb2 = gas_serv_rx_public_action;
 hapd->public_action_cb2_ctx = hapd;
 return 0;
}
