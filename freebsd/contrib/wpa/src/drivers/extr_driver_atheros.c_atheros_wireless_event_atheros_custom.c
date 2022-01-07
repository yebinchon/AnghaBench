
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atheros_driver_data {int dummy; } ;




 int MSG_DEBUG ;
 int fetch_pending_big_events (struct atheros_driver_data*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void
atheros_wireless_event_atheros_custom(struct atheros_driver_data *drv,
          int opcode, char *buf, int len)
{
 switch (opcode) {
 case 129:
  wpa_printf(MSG_DEBUG, "WEXT: EV_P2P_SEND_ACTION_CB");
  fetch_pending_big_events(drv);
  break;
 case 128:
  wpa_printf(MSG_DEBUG, "WEXT: EV_RX_MGMT");
  fetch_pending_big_events(drv);
  break;
 default:
  break;
 }
}
