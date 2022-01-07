
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tncs_data {TYPE_1__* imv_data; } ;
struct TYPE_2__ {int recommendation_set; scalar_t__ recommendation; } ;
typedef int TNC_Result ;
typedef scalar_t__ TNC_IMV_Evaluation_Result ;
typedef scalar_t__ TNC_IMV_Action_Recommendation ;
typedef size_t TNC_IMVID ;
typedef scalar_t__ TNC_ConnectionID ;


 int MSG_DEBUG ;
 int TNC_RESULT_INVALID_PARAMETER ;
 int TNC_RESULT_SUCCESS ;
 struct tncs_data* tncs_get_conn (scalar_t__) ;
 int * tncs_get_imv (size_t) ;
 int wpa_printf (int ,char*,unsigned long,unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static TNC_Result TNC_TNCS_ProvideRecommendation(
 TNC_IMVID imvID,
 TNC_ConnectionID connectionID,
 TNC_IMV_Action_Recommendation recommendation,
 TNC_IMV_Evaluation_Result evaluation)
{
 struct tncs_data *tncs;

 wpa_printf(MSG_DEBUG, "TNC: TNC_TNCS_ProvideRecommendation(imvID=%lu "
     "connectionID=%lu recommendation=%lu evaluation=%lu)",
     (unsigned long) imvID, (unsigned long) connectionID,
     (unsigned long) recommendation, (unsigned long) evaluation);

 if (tncs_get_imv(imvID) == ((void*)0))
  return TNC_RESULT_INVALID_PARAMETER;

 tncs = tncs_get_conn(connectionID);
 if (tncs == ((void*)0))
  return TNC_RESULT_INVALID_PARAMETER;

 tncs->imv_data[imvID].recommendation = recommendation;
 tncs->imv_data[imvID].recommendation_set = 1;

 return TNC_RESULT_SUCCESS;
}
