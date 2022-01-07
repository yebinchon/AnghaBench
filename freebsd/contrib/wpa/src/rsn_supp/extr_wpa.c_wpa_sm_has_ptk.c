
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_sm {int ptk_set; } ;



int wpa_sm_has_ptk(struct wpa_sm *sm)
{
 if (sm == ((void*)0))
  return 0;
 return sm->ptk_set;
}
