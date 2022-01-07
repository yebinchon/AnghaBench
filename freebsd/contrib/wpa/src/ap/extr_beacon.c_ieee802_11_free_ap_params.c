
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_driver_ap_params {int * proberesp; int * head; int * tail; } ;


 int os_free (int *) ;

void ieee802_11_free_ap_params(struct wpa_driver_ap_params *params)
{
 os_free(params->tail);
 params->tail = ((void*)0);
 os_free(params->head);
 params->head = ((void*)0);
 os_free(params->proberesp);
 params->proberesp = ((void*)0);
}
