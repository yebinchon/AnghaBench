
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tnc_if_imv {scalar_t__ (* Initialize ) (int ,int ,int ,scalar_t__*) ;int imvID; int name; } ;
typedef scalar_t__ TNC_Version ;
typedef scalar_t__ TNC_Result ;


 int MSG_DEBUG ;
 int TNC_IFIMV_VERSION_1 ;
 scalar_t__ TNC_RESULT_SUCCESS ;
 scalar_t__ stub1 (int ,int ,int ,scalar_t__*) ;
 int wpa_printf (int ,char*,unsigned long,...) ;

__attribute__((used)) static int tncs_imv_initialize(struct tnc_if_imv *imv)
{
 TNC_Result res;
 TNC_Version imv_ver;

 wpa_printf(MSG_DEBUG, "TNC: Calling TNC_IMV_Initialize for IMV '%s'",
     imv->name);
 res = imv->Initialize(imv->imvID, TNC_IFIMV_VERSION_1,
         TNC_IFIMV_VERSION_1, &imv_ver);
 wpa_printf(MSG_DEBUG, "TNC: TNC_IMV_Initialize: res=%lu imv_ver=%lu",
     (unsigned long) res, (unsigned long) imv_ver);

 return res == TNC_RESULT_SUCCESS ? 0 : -1;
}
