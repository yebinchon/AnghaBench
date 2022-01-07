
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_sm {int tdls_external_setup; } ;



int wpa_tdls_is_external_setup(struct wpa_sm *sm)
{
 return sm->tdls_external_setup;
}
