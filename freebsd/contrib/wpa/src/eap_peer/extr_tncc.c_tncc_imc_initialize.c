
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tnc_if_imc {scalar_t__ (* Initialize ) (int ,int ,int ,scalar_t__*) ;int imcID; int name; } ;
typedef scalar_t__ TNC_Version ;
typedef scalar_t__ TNC_Result ;


 int MSG_DEBUG ;
 int TNC_IFIMC_VERSION_1 ;
 scalar_t__ TNC_RESULT_SUCCESS ;
 scalar_t__ stub1 (int ,int ,int ,scalar_t__*) ;
 int wpa_printf (int ,char*,unsigned long,...) ;

__attribute__((used)) static int tncc_imc_initialize(struct tnc_if_imc *imc)
{
 TNC_Result res;
 TNC_Version imc_ver;

 wpa_printf(MSG_DEBUG, "TNC: Calling TNC_IMC_Initialize for IMC '%s'",
     imc->name);
 res = imc->Initialize(imc->imcID, TNC_IFIMC_VERSION_1,
         TNC_IFIMC_VERSION_1, &imc_ver);
 wpa_printf(MSG_DEBUG, "TNC: TNC_IMC_Initialize: res=%lu imc_ver=%lu",
     (unsigned long) res, (unsigned long) imc_ver);

 return res == TNC_RESULT_SUCCESS ? 0 : -1;
}
