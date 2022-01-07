
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;
typedef int EapType ;
typedef int Boolean ;


 int FALSE ;
 int MSG_DEBUG ;
 int TRUE ;
 int eap_allowed_method (struct eap_sm*,int,int ) ;
 scalar_t__ eap_peer_get_eap_method (int,int ) ;
 int wpa_printf (int ,char*,int,int ) ;

__attribute__((used)) static Boolean eap_sm_allowMethod(struct eap_sm *sm, int vendor,
      EapType method)
{
 if (!eap_allowed_method(sm, vendor, method)) {
  wpa_printf(MSG_DEBUG, "EAP: configuration does not allow: "
      "vendor %u method %u", vendor, method);
  return FALSE;
 }
 if (eap_peer_get_eap_method(vendor, method))
  return TRUE;
 wpa_printf(MSG_DEBUG, "EAP: not included in build: "
     "vendor %u method %u", vendor, method);
 return FALSE;
}
