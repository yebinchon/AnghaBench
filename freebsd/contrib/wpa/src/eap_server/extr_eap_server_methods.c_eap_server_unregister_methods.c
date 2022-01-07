
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int (* free ) (struct eap_method*) ;struct eap_method* next; } ;


 struct eap_method* eap_methods ;
 int eap_server_method_free (struct eap_method*) ;
 int stub1 (struct eap_method*) ;

void eap_server_unregister_methods(void)
{
 struct eap_method *m;

 while (eap_methods) {
  m = eap_methods;
  eap_methods = eap_methods->next;

  if (m->free)
   m->free(m);
  else
   eap_server_method_free(m);
 }
}
