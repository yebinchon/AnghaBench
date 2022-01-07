
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tncs_data {int connectionID; struct tnc_if_imv* imv; } ;
struct tnc_if_imv {unsigned long name; int imvID; scalar_t__ (* BatchEnding ) (int ,int ) ;struct tnc_if_imv* next; } ;
typedef scalar_t__ TNC_Result ;


 int MSG_DEBUG ;
 scalar_t__ stub1 (int ,int ) ;
 int wpa_printf (int ,char*,unsigned long) ;

__attribute__((used)) static void tncs_batch_ending(struct tncs_data *tncs)
{
 struct tnc_if_imv *imv;
 TNC_Result res;

 for (imv = tncs->imv; imv; imv = imv->next) {
  if (imv->BatchEnding == ((void*)0))
   continue;

  wpa_printf(MSG_DEBUG, "TNC: Call BatchEnding for IMV '%s'",
      imv->name);
  res = imv->BatchEnding(imv->imvID, tncs->connectionID);
  wpa_printf(MSG_DEBUG, "TNC: BatchEnding: %lu",
      (unsigned long) res);
 }
}
