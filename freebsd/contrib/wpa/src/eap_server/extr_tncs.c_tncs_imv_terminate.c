
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tnc_if_imv {scalar_t__ (* Terminate ) (int ) ;unsigned long name; int imvID; } ;
typedef scalar_t__ TNC_Result ;


 int MSG_DEBUG ;
 scalar_t__ TNC_RESULT_SUCCESS ;
 scalar_t__ stub1 (int ) ;
 int wpa_printf (int ,char*,unsigned long) ;

__attribute__((used)) static int tncs_imv_terminate(struct tnc_if_imv *imv)
{
 TNC_Result res;

 if (imv->Terminate == ((void*)0))
  return 0;

 wpa_printf(MSG_DEBUG, "TNC: Calling TNC_IMV_Terminate for IMV '%s'",
     imv->name);
 res = imv->Terminate(imv->imvID);
 wpa_printf(MSG_DEBUG, "TNC: TNC_IMV_Terminate: %lu",
     (unsigned long) res);

 return res == TNC_RESULT_SUCCESS ? 0 : -1;
}
