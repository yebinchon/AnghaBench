
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int vendor; int method; int name; struct eap_method* next; } ;
typedef int EapType ;


 int EAP_TYPE_NONE ;
 int EAP_VENDOR_IETF ;
 struct eap_method* eap_methods ;
 scalar_t__ os_strcmp (int ,char const*) ;

EapType eap_peer_get_type(const char *name, int *vendor)
{
 struct eap_method *m;
 for (m = eap_methods; m; m = m->next) {
  if (os_strcmp(m->name, name) == 0) {
   *vendor = m->vendor;
   return m->method;
  }
 }
 *vendor = EAP_VENDOR_IETF;
 return EAP_TYPE_NONE;
}
