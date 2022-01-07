
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tnc_if_imc {unsigned char* imc_send; scalar_t__ imc_send_len; } ;
typedef int TNC_UInt32 ;
typedef int TNC_Result ;
typedef scalar_t__ TNC_MessageType ;
typedef size_t TNC_IMCID ;
typedef int TNC_ConnectionID ;
typedef int TNC_BufferReference ;


 int MSG_DEBUG ;
 size_t TNC_MAX_IMC_ID ;
 int TNC_RESULT_FATAL ;
 int TNC_RESULT_INVALID_PARAMETER ;
 int TNC_RESULT_OTHER ;
 int TNC_RESULT_SUCCESS ;
 unsigned char* base64_encode (int ,int ,size_t*) ;
 int os_free (unsigned char*) ;
 scalar_t__ os_snprintf (char*,size_t,char*,unsigned int,unsigned char*) ;
 unsigned char* os_zalloc (size_t) ;
 struct tnc_if_imc** tnc_imc ;
 int wpa_hexdump_ascii (int ,char*,int ,int ) ;
 int wpa_printf (int ,char*,size_t,int ,scalar_t__) ;

__attribute__((used)) static TNC_Result TNC_TNCC_SendMessage(
 TNC_IMCID imcID,
 TNC_ConnectionID connectionID,
 TNC_BufferReference message,
 TNC_UInt32 messageLength,
 TNC_MessageType messageType)
{
 struct tnc_if_imc *imc;
 unsigned char *b64;
 size_t b64len;

 wpa_printf(MSG_DEBUG, "TNC: TNC_TNCC_SendMessage(imcID=%lu "
     "connectionID=%lu messageType=%lu)",
     imcID, connectionID, messageType);
 wpa_hexdump_ascii(MSG_DEBUG, "TNC: TNC_TNCC_SendMessage",
     message, messageLength);

 if (imcID >= TNC_MAX_IMC_ID || tnc_imc[imcID] == ((void*)0))
  return TNC_RESULT_INVALID_PARAMETER;

 b64 = base64_encode(message, messageLength, &b64len);
 if (b64 == ((void*)0))
  return TNC_RESULT_FATAL;

 imc = tnc_imc[imcID];
 os_free(imc->imc_send);
 imc->imc_send_len = 0;
 imc->imc_send = os_zalloc(b64len + 100);
 if (imc->imc_send == ((void*)0)) {
  os_free(b64);
  return TNC_RESULT_OTHER;
 }

 imc->imc_send_len =
  os_snprintf((char *) imc->imc_send, b64len + 100,
       "<IMC-IMV-Message><Type>%08X</Type>"
       "<Base64>%s</Base64></IMC-IMV-Message>",
       (unsigned int) messageType, b64);

 os_free(b64);

 return TNC_RESULT_SUCCESS;
}
