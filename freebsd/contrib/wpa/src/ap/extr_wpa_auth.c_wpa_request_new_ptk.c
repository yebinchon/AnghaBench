
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_state_machine {scalar_t__ PTK_valid; int PTKRequest; } ;


 int TRUE ;

__attribute__((used)) static void wpa_request_new_ptk(struct wpa_state_machine *sm)
{
 if (sm == ((void*)0))
  return;

 sm->PTKRequest = TRUE;
 sm->PTK_valid = 0;
}
