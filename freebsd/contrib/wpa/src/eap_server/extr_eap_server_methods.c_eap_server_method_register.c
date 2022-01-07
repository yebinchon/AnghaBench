
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {scalar_t__ version; scalar_t__ vendor; scalar_t__ method; struct eap_method* next; int * name; } ;


 scalar_t__ EAP_SERVER_METHOD_INTERFACE_VERSION ;
 struct eap_method* eap_methods ;
 int eap_server_method_free (struct eap_method*) ;
 scalar_t__ os_strcmp (int *,int *) ;

int eap_server_method_register(struct eap_method *method)
{
 struct eap_method *m, *last = ((void*)0);

 if (method == ((void*)0) || method->name == ((void*)0) ||
     method->version != EAP_SERVER_METHOD_INTERFACE_VERSION) {
  eap_server_method_free(method);
  return -1;
 }

 for (m = eap_methods; m; m = m->next) {
  if ((m->vendor == method->vendor &&
       m->method == method->method) ||
      os_strcmp(m->name, method->name) == 0) {
   eap_server_method_free(method);
   return -2;
  }
  last = m;
 }

 if (last)
  last->next = method;
 else
  eap_methods = method;

 return 0;
}
