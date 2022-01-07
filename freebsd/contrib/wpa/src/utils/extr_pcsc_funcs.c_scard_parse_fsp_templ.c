
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 unsigned char USIM_FSP_TEMPL_TAG ;
 unsigned char USIM_PS_DO_TAG ;
 int WPA_GET_BE16 (unsigned char*) ;
 int wpa_hexdump (int ,char*,unsigned char*,unsigned char) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int scard_parse_fsp_templ(unsigned char *buf, size_t buf_len,
     int *ps_do, int *file_len)
{
 unsigned char *pos, *end;

 if (ps_do)
  *ps_do = -1;
 if (file_len)
  *file_len = -1;

 pos = buf;
 end = pos + buf_len;
 if (*pos != USIM_FSP_TEMPL_TAG) {
  wpa_printf(MSG_DEBUG, "SCARD: file header did not "
      "start with FSP template tag");
  return -1;
 }
 pos++;
 if (pos >= end)
  return -1;
 if (pos[0] < end - pos)
  end = pos + 1 + pos[0];
 pos++;
 wpa_hexdump(MSG_DEBUG, "SCARD: file header FSP template",
      pos, end - pos);

 while (end - pos >= 2) {
  unsigned char type, len;

  type = pos[0];
  len = pos[1];
  wpa_printf(MSG_MSGDUMP, "SCARD: file header TLV 0x%02x len=%d",
      type, len);
  pos += 2;

  if (len > (unsigned int) (end - pos))
   break;

  switch (type) {
  case 138:
   wpa_hexdump(MSG_MSGDUMP, "SCARD: File Descriptor TLV",
        pos, len);
   break;
  case 137:
   wpa_hexdump(MSG_MSGDUMP, "SCARD: File Identifier TLV",
        pos, len);
   break;
  case 139:
   wpa_hexdump(MSG_MSGDUMP, "SCARD: DF name (AID) TLV",
        pos, len);
   break;
  case 133:
   wpa_hexdump(MSG_MSGDUMP, "SCARD: Proprietary "
        "information TLV", pos, len);
   break;
  case 135:
   wpa_hexdump(MSG_MSGDUMP, "SCARD: Life Cycle Status "
        "Integer TLV", pos, len);
   break;
  case 136:
   wpa_hexdump(MSG_MSGDUMP, "SCARD: File size TLV",
        pos, len);
   if ((len == 1 || len == 2) && file_len) {
    if (len == 1)
     *file_len = (int) pos[0];
    else
     *file_len = WPA_GET_BE16(pos);
    wpa_printf(MSG_DEBUG, "SCARD: file_size=%d",
        *file_len);
   }
   break;
  case 128:
   wpa_hexdump(MSG_MSGDUMP, "SCARD: Total file size TLV",
        pos, len);
   break;
  case 134:
   wpa_hexdump(MSG_MSGDUMP, "SCARD: PIN Status Template "
        "DO TLV", pos, len);
   if (len >= 2 && pos[0] == USIM_PS_DO_TAG &&
       pos[1] >= 1 && ps_do) {
    wpa_printf(MSG_DEBUG, "SCARD: PS_DO=0x%02x",
        pos[2]);
    *ps_do = (int) pos[2];
   }
   break;
  case 129:
   wpa_hexdump(MSG_MSGDUMP, "SCARD: Short File "
        "Identifier (SFI) TLV", pos, len);
   break;
  case 132:
  case 131:
  case 130:
   wpa_hexdump(MSG_MSGDUMP, "SCARD: Security attribute "
        "TLV", pos, len);
   break;
  default:
   wpa_hexdump(MSG_MSGDUMP, "SCARD: Unrecognized TLV",
        pos, len);
   break;
  }

  pos += len;

  if (pos == end)
   return 0;
 }
 return -1;
}
