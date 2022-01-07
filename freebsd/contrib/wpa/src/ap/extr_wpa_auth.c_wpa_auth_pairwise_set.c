
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_state_machine {scalar_t__ pairwise_set; } ;



int wpa_auth_pairwise_set(struct wpa_state_machine *sm)
{
 return sm && sm->pairwise_set;
}
