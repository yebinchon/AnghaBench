
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tnc_if_imc {scalar_t__ (* NotifyConnectionChange ) (int ,int ,scalar_t__) ;int connectionID; int imcID; int name; } ;
typedef scalar_t__ TNC_Result ;
typedef scalar_t__ TNC_ConnectionState ;


 int MSG_DEBUG ;
 scalar_t__ TNC_RESULT_SUCCESS ;
 scalar_t__ stub1 (int ,int ,scalar_t__) ;
 int wpa_printf (int ,char*,unsigned long,...) ;

__attribute__((used)) static int tncc_imc_notify_connection_change(struct tnc_if_imc *imc,
          TNC_ConnectionState state)
{
 TNC_Result res;

 if (imc->NotifyConnectionChange == ((void*)0))
  return 0;

 wpa_printf(MSG_DEBUG, "TNC: Calling TNC_IMC_NotifyConnectionChange(%d)"
     " for IMC '%s'", (int) state, imc->name);
 res = imc->NotifyConnectionChange(imc->imcID, imc->connectionID,
       state);
 wpa_printf(MSG_DEBUG, "TNC: TNC_IMC_NotifyConnectionChange: %lu",
     (unsigned long) res);

 return res == TNC_RESULT_SUCCESS ? 0 : -1;
}
