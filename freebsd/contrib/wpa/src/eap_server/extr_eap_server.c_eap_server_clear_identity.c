
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int * identity; } ;


 int os_free (int *) ;

void eap_server_clear_identity(struct eap_sm *sm)
{
 os_free(sm->identity);
 sm->identity = ((void*)0);
}
