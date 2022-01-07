
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct eapol_state_machine {TYPE_1__* eap_if; } ;
struct TYPE_2__ {size_t eapKeyDataLen; int const* eapKeyData; } ;



const u8 * ieee802_1x_get_key(struct eapol_state_machine *sm, size_t *len)
{
 *len = 0;
 if (sm == ((void*)0))
  return ((void*)0);

 *len = sm->eap_if->eapKeyDataLen;
 return sm->eap_if->eapKeyData;
}
