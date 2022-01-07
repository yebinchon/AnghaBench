
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tncs_data {TYPE_1__* imv_data; } ;
struct TYPE_2__ {unsigned char* imv_send; scalar_t__ imv_send_len; } ;
typedef int TNC_UInt32 ;
typedef int TNC_Result ;
typedef scalar_t__ TNC_MessageType ;
typedef size_t TNC_IMVID ;
typedef int TNC_ConnectionID ;
typedef int TNC_BufferReference ;


 int MSG_DEBUG ;
 int TNC_RESULT_FATAL ;
 int TNC_RESULT_INVALID_PARAMETER ;
 int TNC_RESULT_OTHER ;
 int TNC_RESULT_SUCCESS ;
 unsigned char* base64_encode (int ,int ,size_t*) ;
 int os_free (unsigned char*) ;
 scalar_t__ os_snprintf (char*,size_t,char*,unsigned int,unsigned char*) ;
 unsigned char* os_zalloc (size_t) ;
 struct tncs_data* tncs_get_conn (int ) ;
 int * tncs_get_imv (size_t) ;
 int wpa_hexdump_ascii (int ,char*,int ,int ) ;
 int wpa_printf (int ,char*,size_t,int ,scalar_t__) ;

__attribute__((used)) static TNC_Result TNC_TNCS_SendMessage(
 TNC_IMVID imvID,
 TNC_ConnectionID connectionID,
 TNC_BufferReference message,
 TNC_UInt32 messageLength,
 TNC_MessageType messageType)
{
 struct tncs_data *tncs;
 unsigned char *b64;
 size_t b64len;

 wpa_printf(MSG_DEBUG, "TNC: TNC_TNCS_SendMessage(imvID=%lu "
     "connectionID=%lu messageType=%lu)",
     imvID, connectionID, messageType);
 wpa_hexdump_ascii(MSG_DEBUG, "TNC: TNC_TNCS_SendMessage",
     message, messageLength);

 if (tncs_get_imv(imvID) == ((void*)0))
  return TNC_RESULT_INVALID_PARAMETER;

 tncs = tncs_get_conn(connectionID);
 if (tncs == ((void*)0))
  return TNC_RESULT_INVALID_PARAMETER;

 b64 = base64_encode(message, messageLength, &b64len);
 if (b64 == ((void*)0))
  return TNC_RESULT_FATAL;

 os_free(tncs->imv_data[imvID].imv_send);
 tncs->imv_data[imvID].imv_send_len = 0;
 tncs->imv_data[imvID].imv_send = os_zalloc(b64len + 100);
 if (tncs->imv_data[imvID].imv_send == ((void*)0)) {
  os_free(b64);
  return TNC_RESULT_OTHER;
 }

 tncs->imv_data[imvID].imv_send_len =
  os_snprintf((char *) tncs->imv_data[imvID].imv_send,
       b64len + 100,
       "<IMC-IMV-Message><Type>%08X</Type>"
       "<Base64>%s</Base64></IMC-IMV-Message>",
       (unsigned int) messageType, b64);

 os_free(b64);

 return TNC_RESULT_SUCCESS;
}
