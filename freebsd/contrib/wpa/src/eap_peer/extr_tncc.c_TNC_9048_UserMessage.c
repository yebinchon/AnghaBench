
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TNC_Result ;
typedef int TNC_IMCID ;
typedef int TNC_ConnectionID ;


 int MSG_DEBUG ;
 int TNC_RESULT_SUCCESS ;
 int wpa_printf (int ,char*,int ,int ,char const*) ;

__attribute__((used)) static TNC_Result TNC_9048_UserMessage(TNC_IMCID imcID,
           TNC_ConnectionID connectionID,
           const char *message)
{
 wpa_printf(MSG_DEBUG, "TNC: TNC_9048_UserMessage(imcID=%lu "
     "connectionID==%lu message='%s')",
     imcID, connectionID, message);
 return TNC_RESULT_SUCCESS;
}
