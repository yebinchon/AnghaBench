
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct eapol_state_machine {struct wpabuf* radius_cui; } ;



struct wpabuf * ieee802_1x_get_radius_cui(struct eapol_state_machine *sm)
{
 if (sm == ((void*)0))
  return ((void*)0);
 return sm->radius_cui;
}
