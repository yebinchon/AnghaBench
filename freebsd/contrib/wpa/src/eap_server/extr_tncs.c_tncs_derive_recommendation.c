
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tncs_data {int done; int recommendation; int connectionID; struct tnc_if_imv* imv; scalar_t__ tncs_message; TYPE_1__* imv_data; } ;
struct tnc_if_imv {size_t imvID; struct tnc_if_imv* next; } ;
typedef enum tncs_process_res { ____Placeholder_tncs_process_res } tncs_process_res ;
typedef enum IMV_Action_Recommendation { ____Placeholder_IMV_Action_Recommendation } IMV_Action_Recommendation ;
struct TYPE_2__ {scalar_t__ recommendation; } ;
typedef scalar_t__ TNC_IMV_Action_Recommendation ;
typedef int TNC_ConnectionState ;


 int MSG_DEBUG ;
 int TNCCS_PROCESS_ERROR ;
 int TNCCS_PROCESS_OK_NO_RECOMMENDATION ;
 int TNCCS_RECOMMENDATION_ALLOW ;
 int TNCCS_RECOMMENDATION_ISOLATE ;
 int TNCCS_RECOMMENDATION_NO_ACCESS ;
 int TNCCS_RECOMMENDATION_NO_RECOMMENDATION ;
 int TNC_CONNECTION_STATE_ACCESS_ALLOWED ;
 int TNC_CONNECTION_STATE_ACCESS_ISOLATED ;
 int TNC_CONNECTION_STATE_ACCESS_NONE ;




 int TNC_TNCCS_RECOMMENDATION ;
 int os_free (scalar_t__) ;
 int os_snprintf (scalar_t__,int,char*,int ,char*) ;
 scalar_t__ os_zalloc (int) ;
 int tncs_imv_notify_connection_change (struct tnc_if_imv*,int ,int ) ;
 int tncs_solicit_recommendation (struct tncs_data*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static enum tncs_process_res tncs_derive_recommendation(struct tncs_data *tncs)
{
 enum IMV_Action_Recommendation rec;
 struct tnc_if_imv *imv;
 TNC_ConnectionState state;
 char *txt;

 wpa_printf(MSG_DEBUG, "TNC: No more messages from IMVs");

 if (tncs->done)
  return TNCCS_PROCESS_OK_NO_RECOMMENDATION;

 tncs_solicit_recommendation(tncs);


 rec = 128;
 for (imv = tncs->imv; imv; imv = imv->next) {
  TNC_IMV_Action_Recommendation irec;
  irec = tncs->imv_data[imv->imvID].recommendation;
  if (irec == 129)
   rec = 129;
  if (irec == 130 &&
      rec != 129)
   rec = 130;
  if (irec == 131 &&
      rec == 128)
   rec = 131;
 }

 wpa_printf(MSG_DEBUG, "TNC: Recommendation: %d", rec);
 tncs->recommendation = rec;
 tncs->done = 1;

 txt = ((void*)0);
 switch (rec) {
 case 131:
 case 128:
  txt = "allow";
  state = TNC_CONNECTION_STATE_ACCESS_ALLOWED;
  break;
 case 130:
  txt = "isolate";
  state = TNC_CONNECTION_STATE_ACCESS_ISOLATED;
  break;
 case 129:
  txt = "none";
  state = TNC_CONNECTION_STATE_ACCESS_NONE;
  break;
 default:
  state = TNC_CONNECTION_STATE_ACCESS_ALLOWED;
  break;
 }

 if (txt) {
  os_free(tncs->tncs_message);
  tncs->tncs_message = os_zalloc(200);
  if (tncs->tncs_message) {
   os_snprintf(tncs->tncs_message, 199,
        "<TNCC-TNCS-Message><Type>%08X</Type>"
        "<XML><TNCCS-Recommendation type=\"%s\">"
        "</TNCCS-Recommendation></XML>"
        "</TNCC-TNCS-Message>",
        TNC_TNCCS_RECOMMENDATION, txt);
  }
 }

 for (imv = tncs->imv; imv; imv = imv->next) {
  tncs_imv_notify_connection_change(imv, tncs->connectionID,
        state);
 }

 switch (rec) {
 case 131:
  return TNCCS_RECOMMENDATION_ALLOW;
 case 129:
  return TNCCS_RECOMMENDATION_NO_ACCESS;
 case 130:
  return TNCCS_RECOMMENDATION_ISOLATE;
 case 128:
  return TNCCS_RECOMMENDATION_NO_RECOMMENDATION;
 default:
  return TNCCS_PROCESS_ERROR;
 }
}
