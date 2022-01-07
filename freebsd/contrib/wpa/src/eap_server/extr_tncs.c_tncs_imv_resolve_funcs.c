
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tnc_if_imv {void* Terminate; void* BatchEnding; void* ReceiveMessage; void* NotifyConnectionChange; int * ProvideBindFunction; int * SolicitRecommendation; int * Initialize; void* dlhandle; } ;


 int MSG_ERROR ;
 void* tncs_get_sym (void*,char*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int tncs_imv_resolve_funcs(struct tnc_if_imv *imv)
{
 void *handle = imv->dlhandle;


 imv->Initialize = tncs_get_sym(handle, "TNC_IMV_Initialize");
 if (imv->Initialize == ((void*)0)) {
  wpa_printf(MSG_ERROR, "TNC: IMV does not export "
      "TNC_IMV_Initialize");
  return -1;
 }

 imv->SolicitRecommendation = tncs_get_sym(
  handle, "TNC_IMV_SolicitRecommendation");
 if (imv->SolicitRecommendation == ((void*)0)) {
  wpa_printf(MSG_ERROR, "TNC: IMV does not export "
      "TNC_IMV_SolicitRecommendation");
  return -1;
 }

 imv->ProvideBindFunction =
  tncs_get_sym(handle, "TNC_IMV_ProvideBindFunction");
 if (imv->ProvideBindFunction == ((void*)0)) {
  wpa_printf(MSG_ERROR, "TNC: IMV does not export "
      "TNC_IMV_ProvideBindFunction");
  return -1;
 }


 imv->NotifyConnectionChange =
  tncs_get_sym(handle, "TNC_IMV_NotifyConnectionChange");
 imv->ReceiveMessage = tncs_get_sym(handle, "TNC_IMV_ReceiveMessage");
 imv->BatchEnding = tncs_get_sym(handle, "TNC_IMV_BatchEnding");
 imv->Terminate = tncs_get_sym(handle, "TNC_IMV_Terminate");

 return 0;
}
