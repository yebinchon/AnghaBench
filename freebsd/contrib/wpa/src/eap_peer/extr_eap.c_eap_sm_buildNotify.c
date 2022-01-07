
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;


 int EAP_CODE_RESPONSE ;
 int EAP_TYPE_NOTIFICATION ;
 int EAP_VENDOR_IETF ;
 int MSG_DEBUG ;
 struct wpabuf* eap_msg_alloc (int ,int ,int ,int ,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static struct wpabuf * eap_sm_buildNotify(int id)
{
 wpa_printf(MSG_DEBUG, "EAP: Generating EAP-Response Notification");
 return eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_NOTIFICATION, 0,
   EAP_CODE_RESPONSE, id);
}
