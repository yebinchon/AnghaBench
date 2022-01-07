
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_state_machine {void* pmksa; } ;



__attribute__((used)) static int wpa_auth_pmksa_clear_cb(struct wpa_state_machine *sm, void *ctx)
{
 if (sm->pmksa == ctx)
  sm->pmksa = ((void*)0);
 return 0;
}
