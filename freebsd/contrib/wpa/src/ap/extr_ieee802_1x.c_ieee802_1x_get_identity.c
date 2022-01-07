
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eapol_state_machine {size_t identity_len; int * identity; } ;



u8 * ieee802_1x_get_identity(struct eapol_state_machine *sm, size_t *len)
{
 if (sm == ((void*)0) || sm->identity == ((void*)0))
  return ((void*)0);

 *len = sm->identity_len;
 return sm->identity;
}
