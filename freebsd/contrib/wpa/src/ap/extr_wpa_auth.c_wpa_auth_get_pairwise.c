
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_state_machine {int pairwise; } ;



int wpa_auth_get_pairwise(struct wpa_state_machine *sm)
{
 return sm->pairwise;
}
