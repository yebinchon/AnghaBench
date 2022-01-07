
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tnc_if_imc {scalar_t__ (* Terminate ) (int ) ;unsigned long name; int imcID; } ;
typedef scalar_t__ TNC_Result ;


 int MSG_DEBUG ;
 scalar_t__ TNC_RESULT_SUCCESS ;
 scalar_t__ stub1 (int ) ;
 int wpa_printf (int ,char*,unsigned long) ;

__attribute__((used)) static int tncc_imc_terminate(struct tnc_if_imc *imc)
{
 TNC_Result res;

 if (imc->Terminate == ((void*)0))
  return 0;

 wpa_printf(MSG_DEBUG, "TNC: Calling TNC_IMC_Terminate for IMC '%s'",
     imc->name);
 res = imc->Terminate(imc->imcID);
 wpa_printf(MSG_DEBUG, "TNC: TNC_IMC_Terminate: %lu",
     (unsigned long) res);

 return res == TNC_RESULT_SUCCESS ? 0 : -1;
}
