
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tnc_if_imc {unsigned long name; scalar_t__ (* BeginHandshake ) (int ,int ) ;int connectionID; int imcID; } ;
typedef scalar_t__ TNC_Result ;


 int MSG_DEBUG ;
 scalar_t__ TNC_RESULT_SUCCESS ;
 scalar_t__ stub1 (int ,int ) ;
 int wpa_printf (int ,char*,unsigned long) ;

__attribute__((used)) static int tncc_imc_begin_handshake(struct tnc_if_imc *imc)
{
 TNC_Result res;

 wpa_printf(MSG_DEBUG, "TNC: Calling TNC_IMC_BeginHandshake for IMC "
     "'%s'", imc->name);
 res = imc->BeginHandshake(imc->imcID, imc->connectionID);
 wpa_printf(MSG_DEBUG, "TNC: TNC_IMC_BeginHandshake: %lu",
     (unsigned long) res);

 return res == TNC_RESULT_SUCCESS ? 0 : -1;
}
