
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_sm {int eap; } ;


 int eap_invalidate_cached_session (int ) ;

void eapol_sm_invalidate_cached_session(struct eapol_sm *sm)
{
 if (sm)
  eap_invalidate_cached_session(sm->eap);
}
