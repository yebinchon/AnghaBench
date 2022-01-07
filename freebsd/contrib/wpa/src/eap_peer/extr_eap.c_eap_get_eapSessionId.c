
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sm {size_t eapSessionIdLen; int const* eapSessionId; } ;



const u8 * eap_get_eapSessionId(struct eap_sm *sm, size_t *len)
{
 if (sm == ((void*)0) || sm->eapSessionId == ((void*)0)) {
  *len = 0;
  return ((void*)0);
 }

 *len = sm->eapSessionIdLen;
 return sm->eapSessionId;
}
