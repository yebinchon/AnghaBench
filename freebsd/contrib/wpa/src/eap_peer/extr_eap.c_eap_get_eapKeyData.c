
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sm {size_t eapKeyDataLen; int const* eapKeyData; } ;



const u8 * eap_get_eapKeyData(struct eap_sm *sm, size_t *len)
{
 if (sm == ((void*)0) || sm->eapKeyData == ((void*)0)) {
  *len = 0;
  return ((void*)0);
 }

 *len = sm->eapKeyDataLen;
 return sm->eapKeyData;
}
