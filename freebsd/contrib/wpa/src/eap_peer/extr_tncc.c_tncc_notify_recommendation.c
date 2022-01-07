
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tncc_data {struct tnc_if_imc* imc; } ;
struct tnc_if_imc {struct tnc_if_imc* next; } ;
typedef enum tncc_process_res { ____Placeholder_tncc_process_res } tncc_process_res ;
typedef int TNC_ConnectionState ;





 int TNC_CONNECTION_STATE_ACCESS_ALLOWED ;
 int TNC_CONNECTION_STATE_ACCESS_ISOLATED ;
 int TNC_CONNECTION_STATE_ACCESS_NONE ;
 int tncc_imc_notify_connection_change (struct tnc_if_imc*,int ) ;

__attribute__((used)) static void tncc_notify_recommendation(struct tncc_data *tncc,
           enum tncc_process_res res)
{
 TNC_ConnectionState state;
 struct tnc_if_imc *imc;

 switch (res) {
 case 130:
  state = TNC_CONNECTION_STATE_ACCESS_ALLOWED;
  break;
 case 128:
  state = TNC_CONNECTION_STATE_ACCESS_NONE;
  break;
 case 129:
  state = TNC_CONNECTION_STATE_ACCESS_ISOLATED;
  break;
 default:
  state = TNC_CONNECTION_STATE_ACCESS_NONE;
  break;
 }

 for (imc = tncc->imc; imc; imc = imc->next)
  tncc_imc_notify_connection_change(imc, state);
}
