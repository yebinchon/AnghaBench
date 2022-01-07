
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct eap_method {struct eap_method const* next; } const eap_method ;


 struct eap_method const* eap_methods ;

const struct eap_method * eap_peer_get_methods(size_t *count)
{
 int c = 0;
 struct eap_method *m;

 for (m = eap_methods; m; m = m->next)
  c++;

 *count = c;
 return eap_methods;
}
