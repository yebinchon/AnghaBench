
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tncs_data {int connectionID; struct tnc_if_imv* imv; } ;
struct tnc_if_imv {unsigned long name; int imvID; scalar_t__ (* ReceiveMessage ) (int ,int ,int ,size_t,unsigned int) ;struct tnc_if_imv* next; } ;
typedef scalar_t__ TNC_Result ;
typedef int TNC_BufferReference ;


 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 scalar_t__ stub1 (int ,int ,int ,size_t,unsigned int) ;
 int tncs_supported_type (struct tnc_if_imv*,unsigned int) ;
 int wpa_hexdump_ascii (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*,unsigned long) ;

__attribute__((used)) static void tncs_send_to_imvs(struct tncs_data *tncs, unsigned int type,
         const u8 *msg, size_t len)
{
 struct tnc_if_imv *imv;
 TNC_Result res;

 wpa_hexdump_ascii(MSG_MSGDUMP, "TNC: Message to IMV(s)", msg, len);

 for (imv = tncs->imv; imv; imv = imv->next) {
  if (imv->ReceiveMessage == ((void*)0) ||
      !tncs_supported_type(imv, type))
   continue;

  wpa_printf(MSG_DEBUG, "TNC: Call ReceiveMessage for IMV '%s'",
      imv->name);
  res = imv->ReceiveMessage(imv->imvID, tncs->connectionID,
       (TNC_BufferReference) msg, len,
       type);
  wpa_printf(MSG_DEBUG, "TNC: ReceiveMessage: %lu",
      (unsigned long) res);
 }
}
