
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TNC_Result ;
typedef size_t TNC_IMCID ;


 int MSG_DEBUG ;
 void* TNC_9048_LogMessage ;
 void* TNC_9048_UserMessage ;
 size_t TNC_MAX_IMC_ID ;
 int TNC_RESULT_INVALID_PARAMETER ;
 int TNC_RESULT_SUCCESS ;
 void* TNC_TNCC_ReportMessageTypes ;
 void* TNC_TNCC_RequestHandshakeRetry ;
 void* TNC_TNCC_SendMessage ;
 scalar_t__ os_strcmp (char*,char*) ;
 int ** tnc_imc ;
 int wpa_printf (int ,char*,unsigned long,char*) ;

__attribute__((used)) static TNC_Result TNC_TNCC_BindFunction(
 TNC_IMCID imcID,
 char *functionName,
 void **pOutfunctionPointer)
{
 wpa_printf(MSG_DEBUG, "TNC: TNC_TNCC_BindFunction(imcID=%lu, "
     "functionName='%s')", (unsigned long) imcID, functionName);

 if (imcID >= TNC_MAX_IMC_ID || tnc_imc[imcID] == ((void*)0))
  return TNC_RESULT_INVALID_PARAMETER;

 if (pOutfunctionPointer == ((void*)0))
  return TNC_RESULT_INVALID_PARAMETER;

 if (os_strcmp(functionName, "TNC_TNCC_ReportMessageTypes") == 0)
  *pOutfunctionPointer = TNC_TNCC_ReportMessageTypes;
 else if (os_strcmp(functionName, "TNC_TNCC_SendMessage") == 0)
  *pOutfunctionPointer = TNC_TNCC_SendMessage;
 else if (os_strcmp(functionName, "TNC_TNCC_RequestHandshakeRetry") ==
   0)
  *pOutfunctionPointer = TNC_TNCC_RequestHandshakeRetry;
 else if (os_strcmp(functionName, "TNC_9048_LogMessage") == 0)
  *pOutfunctionPointer = TNC_9048_LogMessage;
 else if (os_strcmp(functionName, "TNC_9048_UserMessage") == 0)
  *pOutfunctionPointer = TNC_9048_UserMessage;
 else
  *pOutfunctionPointer = ((void*)0);

 return TNC_RESULT_SUCCESS;
}
