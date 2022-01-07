
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tncs_data {int connectionID; TYPE_1__* imv_data; struct tnc_if_imv* imv; } ;
struct tnc_if_imv {size_t imvID; unsigned long name; scalar_t__ (* SolicitRecommendation ) (size_t,int ) ;struct tnc_if_imv* next; } ;
struct TYPE_2__ {scalar_t__ recommendation_set; } ;
typedef scalar_t__ TNC_Result ;


 int MSG_DEBUG ;
 scalar_t__ stub1 (size_t,int ) ;
 int wpa_printf (int ,char*,unsigned long) ;

__attribute__((used)) static void tncs_solicit_recommendation(struct tncs_data *tncs)
{
 struct tnc_if_imv *imv;
 TNC_Result res;

 for (imv = tncs->imv; imv; imv = imv->next) {
  if (tncs->imv_data[imv->imvID].recommendation_set)
   continue;

  wpa_printf(MSG_DEBUG, "TNC: Call SolicitRecommendation for "
      "IMV '%s'", imv->name);
  res = imv->SolicitRecommendation(imv->imvID,
       tncs->connectionID);
  wpa_printf(MSG_DEBUG, "TNC: SolicitRecommendation: %lu",
      (unsigned long) res);
 }
}
