
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_sm {unsigned int key_mgmt; } ;



unsigned int wpa_sm_get_key_mgmt(struct wpa_sm *sm)
{
 return sm->key_mgmt;
}
