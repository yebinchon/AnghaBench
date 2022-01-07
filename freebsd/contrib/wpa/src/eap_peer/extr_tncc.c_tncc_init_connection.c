
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tncc_data {struct tnc_if_imc* imc; } ;
struct tnc_if_imc {scalar_t__ imc_send_len; int * imc_send; struct tnc_if_imc* next; } ;


 int TNC_CONNECTION_STATE_CREATE ;
 int TNC_CONNECTION_STATE_HANDSHAKE ;
 int os_free (int *) ;
 int tncc_imc_begin_handshake (struct tnc_if_imc*) ;
 int tncc_imc_notify_connection_change (struct tnc_if_imc*,int ) ;

void tncc_init_connection(struct tncc_data *tncc)
{
 struct tnc_if_imc *imc;

 for (imc = tncc->imc; imc; imc = imc->next) {
  tncc_imc_notify_connection_change(
   imc, TNC_CONNECTION_STATE_CREATE);
  tncc_imc_notify_connection_change(
   imc, TNC_CONNECTION_STATE_HANDSHAKE);

  os_free(imc->imc_send);
  imc->imc_send = ((void*)0);
  imc->imc_send_len = 0;

  tncc_imc_begin_handshake(imc);
 }
}
