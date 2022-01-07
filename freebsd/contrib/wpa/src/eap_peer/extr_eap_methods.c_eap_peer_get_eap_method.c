
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct eap_method {int vendor; scalar_t__ method; struct eap_method const* next; } const eap_method ;
typedef scalar_t__ EapType ;


 struct eap_method const* eap_methods ;

const struct eap_method * eap_peer_get_eap_method(int vendor, EapType method)
{
 struct eap_method *m;
 for (m = eap_methods; m; m = m->next) {
  if (m->vendor == vendor && m->method == method)
   return m;
 }
 return ((void*)0);
}
