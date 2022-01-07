
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int * eapKeyData; int eapKeyDataLen; } ;


 int bin_clear_free (int *,int ) ;

__attribute__((used)) static void eap_sm_free_key(struct eap_sm *sm)
{
 if (sm->eapKeyData) {
  bin_clear_free(sm->eapKeyData, sm->eapKeyDataLen);
  sm->eapKeyData = ((void*)0);
 }
}
