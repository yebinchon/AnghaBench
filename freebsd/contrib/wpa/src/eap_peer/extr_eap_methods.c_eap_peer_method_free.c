
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int dummy; } ;


 int os_free (struct eap_method*) ;

__attribute__((used)) static void eap_peer_method_free(struct eap_method *method)
{
 os_free(method);
}
