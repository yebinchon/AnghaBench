
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tnc_if_imc {void* Terminate; void* BatchEnding; void* ReceiveMessage; void* NotifyConnectionChange; int * ProvideBindFunction; int * BeginHandshake; int * Initialize; void* dlhandle; } ;


 int MSG_ERROR ;
 void* tncc_get_sym (void*,char*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int tncc_imc_resolve_funcs(struct tnc_if_imc *imc)
{
 void *handle = imc->dlhandle;


 imc->Initialize = tncc_get_sym(handle, "TNC_IMC_Initialize");
 if (imc->Initialize == ((void*)0)) {
  wpa_printf(MSG_ERROR, "TNC: IMC does not export "
      "TNC_IMC_Initialize");
  return -1;
 }

 imc->BeginHandshake = tncc_get_sym(handle, "TNC_IMC_BeginHandshake");
 if (imc->BeginHandshake == ((void*)0)) {
  wpa_printf(MSG_ERROR, "TNC: IMC does not export "
      "TNC_IMC_BeginHandshake");
  return -1;
 }

 imc->ProvideBindFunction =
  tncc_get_sym(handle, "TNC_IMC_ProvideBindFunction");
 if (imc->ProvideBindFunction == ((void*)0)) {
  wpa_printf(MSG_ERROR, "TNC: IMC does not export "
      "TNC_IMC_ProvideBindFunction");
  return -1;
 }


 imc->NotifyConnectionChange =
  tncc_get_sym(handle, "TNC_IMC_NotifyConnectionChange");
 imc->ReceiveMessage = tncc_get_sym(handle, "TNC_IMC_ReceiveMessage");
 imc->BatchEnding = tncc_get_sym(handle, "TNC_IMC_BatchEnding");
 imc->Terminate = tncc_get_sym(handle, "TNC_IMC_Terminate");

 return 0;
}
