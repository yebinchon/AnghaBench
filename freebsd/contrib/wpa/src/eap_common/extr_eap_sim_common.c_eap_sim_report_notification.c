
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSG_INFO ;
 int MSG_WARNING ;
 int wpa_printf (int ,char*,char const*,...) ;

void eap_sim_report_notification(void *msg_ctx, int notification, int aka)
{

 const char *type = aka ? "AKA" : "SIM";


 switch (notification) {
 case 132:
  wpa_printf(MSG_WARNING, "EAP-%s: General failure "
      "notification (after authentication)", type);
  break;
 case 128:
  wpa_printf(MSG_WARNING, "EAP-%s: Failure notification: "
      "User has been temporarily denied access to the "
      "requested service", type);
  break;
 case 130:
  wpa_printf(MSG_WARNING, "EAP-%s: Failure notification: "
      "User has not subscribed to the requested service",
      type);
  break;
 case 131:
  wpa_printf(MSG_WARNING, "EAP-%s: General failure "
      "notification (before authentication)", type);
  break;
 case 129:
  wpa_printf(MSG_INFO, "EAP-%s: Successful authentication "
      "notification", type);
  break;
 default:
  if (notification >= 32768) {
   wpa_printf(MSG_INFO, "EAP-%s: Unrecognized "
       "non-failure notification %d",
       type, notification);
  } else {
   wpa_printf(MSG_WARNING, "EAP-%s: Unrecognized "
       "failure notification %d",
       type, notification);
  }
 }
}
