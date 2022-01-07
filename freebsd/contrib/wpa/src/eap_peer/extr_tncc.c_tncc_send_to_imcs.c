
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tncc_data {struct tnc_if_imc* imc; } ;
struct tnc_if_imc {unsigned long name; int connectionID; int imcID; scalar_t__ (* ReceiveMessage ) (int ,int ,int ,size_t,unsigned int) ;struct tnc_if_imc* next; } ;
typedef scalar_t__ TNC_Result ;
typedef int TNC_BufferReference ;


 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 scalar_t__ stub1 (int ,int ,int ,size_t,unsigned int) ;
 int tncc_supported_type (struct tnc_if_imc*,unsigned int) ;
 int wpa_hexdump_ascii (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*,unsigned long) ;

__attribute__((used)) static void tncc_send_to_imcs(struct tncc_data *tncc, unsigned int type,
         const u8 *msg, size_t len)
{
 struct tnc_if_imc *imc;
 TNC_Result res;

 wpa_hexdump_ascii(MSG_MSGDUMP, "TNC: Message to IMC(s)", msg, len);

 for (imc = tncc->imc; imc; imc = imc->next) {
  if (imc->ReceiveMessage == ((void*)0) ||
      !tncc_supported_type(imc, type))
   continue;

  wpa_printf(MSG_DEBUG, "TNC: Call ReceiveMessage for IMC '%s'",
      imc->name);
  res = imc->ReceiveMessage(imc->imcID, imc->connectionID,
       (TNC_BufferReference) msg, len,
       type);
  wpa_printf(MSG_DEBUG, "TNC: ReceiveMessage: %lu",
      (unsigned long) res);
 }
}
