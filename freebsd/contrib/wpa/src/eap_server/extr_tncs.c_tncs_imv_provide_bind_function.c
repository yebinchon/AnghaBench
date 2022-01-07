
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tnc_if_imv {unsigned long name; scalar_t__ (* ProvideBindFunction ) (int ,int ) ;int imvID; } ;
typedef scalar_t__ TNC_Result ;


 int MSG_DEBUG ;
 scalar_t__ TNC_RESULT_SUCCESS ;
 int TNC_TNCS_BindFunction ;
 scalar_t__ stub1 (int ,int ) ;
 int wpa_printf (int ,char*,unsigned long) ;

__attribute__((used)) static int tncs_imv_provide_bind_function(struct tnc_if_imv *imv)
{
 TNC_Result res;

 wpa_printf(MSG_DEBUG, "TNC: Calling TNC_IMV_ProvideBindFunction for "
     "IMV '%s'", imv->name);
 res = imv->ProvideBindFunction(imv->imvID, TNC_TNCS_BindFunction);
 wpa_printf(MSG_DEBUG, "TNC: TNC_IMV_ProvideBindFunction: res=%lu",
     (unsigned long) res);

 return res == TNC_RESULT_SUCCESS ? 0 : -1;
}
