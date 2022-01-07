
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u8 ;
struct ikev2_payloads {long const* sa; unsigned int sa_len; long const* ke; unsigned int ke_len; long const* idi; unsigned int idi_len; long const* idr; unsigned int idr_len; long const* cert; unsigned int cert_len; long const* auth; unsigned int auth_len; long const* nonce; unsigned int nonce_len; long const* encrypted; unsigned int encrypted_len; long const* notification; unsigned int notification_len; long encr_next_payload; } ;
struct ikev2_payload_hdr {long next_payload; int flags; int payload_length; } ;





 int IKEV2_PAYLOAD_FLAGS_CRITICAL ;





 long IKEV2_PAYLOAD_NO_NEXT_PAYLOAD ;

 int MSG_DEBUG ;
 int MSG_INFO ;
 unsigned int WPA_GET_BE16 (int ) ;
 int os_memset (struct ikev2_payloads*,int ,int) ;
 int wpa_printf (int ,char*,...) ;

int ikev2_parse_payloads(struct ikev2_payloads *payloads,
    u8 next_payload, const u8 *pos, const u8 *end)
{
 const struct ikev2_payload_hdr *phdr;

 os_memset(payloads, 0, sizeof(*payloads));

 while (next_payload != IKEV2_PAYLOAD_NO_NEXT_PAYLOAD) {
  unsigned int plen, pdatalen, left;
  const u8 *pdata;
  wpa_printf(MSG_DEBUG, "IKEV2: Processing payload %u",
      next_payload);
  if (end < pos)
   return -1;
  left = end - pos;
  if (left < sizeof(*phdr)) {
   wpa_printf(MSG_INFO, "IKEV2:   Too short message for "
       "payload header (left=%ld)",
       (long) (end - pos));
   return -1;
  }
  phdr = (const struct ikev2_payload_hdr *) pos;
  plen = WPA_GET_BE16(phdr->payload_length);
  if (plen < sizeof(*phdr) || plen > left) {
   wpa_printf(MSG_INFO, "IKEV2:   Invalid payload header "
       "length %d", plen);
   return -1;
  }

  wpa_printf(MSG_DEBUG, "IKEV2:   Next Payload: %u  Flags: 0x%x"
      "  Payload Length: %u",
      phdr->next_payload, phdr->flags, plen);

  pdata = (const u8 *) (phdr + 1);
  pdatalen = plen - sizeof(*phdr);

  switch (next_payload) {
  case 128:
   wpa_printf(MSG_DEBUG, "IKEV2:   Payload: Security "
       "Association");
   payloads->sa = pdata;
   payloads->sa_len = pdatalen;
   break;
  case 131:
   wpa_printf(MSG_DEBUG, "IKEV2:   Payload: Key "
       "Exchange");
   payloads->ke = pdata;
   payloads->ke_len = pdatalen;
   break;
  case 133:
   wpa_printf(MSG_DEBUG, "IKEV2:   Payload: IDi");
   payloads->idi = pdata;
   payloads->idi_len = pdatalen;
   break;
  case 132:
   wpa_printf(MSG_DEBUG, "IKEV2:   Payload: IDr");
   payloads->idr = pdata;
   payloads->idr_len = pdatalen;
   break;
  case 135:
   wpa_printf(MSG_DEBUG, "IKEV2:   Payload: Certificate");
   payloads->cert = pdata;
   payloads->cert_len = pdatalen;
   break;
  case 136:
   wpa_printf(MSG_DEBUG, "IKEV2:   Payload: "
       "Authentication");
   payloads->auth = pdata;
   payloads->auth_len = pdatalen;
   break;
  case 130:
   wpa_printf(MSG_DEBUG, "IKEV2:   Payload: Nonce");
   payloads->nonce = pdata;
   payloads->nonce_len = pdatalen;
   break;
  case 134:
   wpa_printf(MSG_DEBUG, "IKEV2:   Payload: Encrypted");
   payloads->encrypted = pdata;
   payloads->encrypted_len = pdatalen;
   break;
  case 129:
   wpa_printf(MSG_DEBUG, "IKEV2:   Payload: "
       "Notification");
   payloads->notification = pdata;
   payloads->notification_len = pdatalen;
   break;
  default:
   if (phdr->flags & IKEV2_PAYLOAD_FLAGS_CRITICAL) {
    wpa_printf(MSG_INFO, "IKEV2:   Unsupported "
        "critical payload %u - reject the "
        "entire message", next_payload);
    return -1;
   } else {
    wpa_printf(MSG_DEBUG, "IKEV2:   Skipped "
        "unsupported payload %u",
        next_payload);
   }
  }

  if (next_payload == 134 &&
      pos + plen == end) {





   payloads->encr_next_payload = phdr->next_payload;
   next_payload = IKEV2_PAYLOAD_NO_NEXT_PAYLOAD;
  } else
   next_payload = phdr->next_payload;

  pos += plen;
 }

 if (pos != end) {
  wpa_printf(MSG_INFO, "IKEV2: Unexpected extra data after "
      "payloads");
  return -1;
 }

 return 0;
}
