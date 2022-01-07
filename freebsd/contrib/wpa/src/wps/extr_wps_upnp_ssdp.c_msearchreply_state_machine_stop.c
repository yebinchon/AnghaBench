
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct advertisement_state_machine {int list; } ;


 int MSG_DEBUG ;
 int dl_list_del (int *) ;
 int os_free (struct advertisement_state_machine*) ;
 int wpa_printf (int ,char*) ;

void msearchreply_state_machine_stop(struct advertisement_state_machine *a)
{
 wpa_printf(MSG_DEBUG, "WPS UPnP: M-SEARCH stop");
 dl_list_del(&a->list);
 os_free(a);
}
