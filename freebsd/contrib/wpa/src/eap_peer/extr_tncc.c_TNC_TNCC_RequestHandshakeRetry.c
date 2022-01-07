
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TNC_RetryReason ;
typedef int TNC_Result ;
typedef size_t TNC_IMCID ;
typedef int TNC_ConnectionID ;


 int MSG_DEBUG ;
 size_t TNC_MAX_IMC_ID ;
 int TNC_RESULT_INVALID_PARAMETER ;
 int TNC_RESULT_SUCCESS ;
 int ** tnc_imc ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static TNC_Result TNC_TNCC_RequestHandshakeRetry(
 TNC_IMCID imcID,
 TNC_ConnectionID connectionID,
 TNC_RetryReason reason)
{
 wpa_printf(MSG_DEBUG, "TNC: TNC_TNCC_RequestHandshakeRetry");

 if (imcID >= TNC_MAX_IMC_ID || tnc_imc[imcID] == ((void*)0))
  return TNC_RESULT_INVALID_PARAMETER;







 return TNC_RESULT_SUCCESS;
}
