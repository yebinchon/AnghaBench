
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_sm {int dot1xSuppEapolFramesTx; } ;



void eapol_sm_notify_tx_eapol_key(struct eapol_sm *sm)
{
 if (sm)
  sm->dot1xSuppEapolFramesTx++;
}
