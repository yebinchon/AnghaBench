
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wpabuf {int dummy; } ;
struct ikev2_payloads {int dummy; } ;
struct ikev2_initiator_data {int state; int r_sign_msg; int r_spi; int i_spi; } ;
struct ikev2_hdr {int flags; int next_payload; int r_spi; int i_spi; int exchange_type; int version; int length; int message_id; } ;




 int IKEV2_HDR_INITIATOR ;
 int IKEV2_HDR_RESPONSE ;
 int IKEV2_SPI_LEN ;
 int IKEV2_VERSION ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int MSG_MSGDUMP ;


 int WPA_GET_BE32 (int ) ;
 scalar_t__ ikev2_parse_payloads (struct ikev2_payloads*,int ,int const*,int const*) ;
 int ikev2_process_sa_auth (struct ikev2_initiator_data*,struct ikev2_hdr const*,struct ikev2_payloads*) ;
 int ikev2_process_sa_init (struct ikev2_initiator_data*,struct ikev2_hdr const*,struct ikev2_payloads*) ;
 scalar_t__ ikev2_validate_rx_state (struct ikev2_initiator_data*,int ,int) ;
 scalar_t__ os_memcmp (int ,int ,int ) ;
 int wpa_hexdump (int ,char*,int ,int ) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_dup (struct wpabuf const*) ;
 int wpabuf_free (int ) ;
 scalar_t__ wpabuf_head (struct wpabuf const*) ;
 int * wpabuf_head_u8 (struct wpabuf const*) ;
 int wpabuf_len (struct wpabuf const*) ;

int ikev2_initiator_process(struct ikev2_initiator_data *data,
       const struct wpabuf *buf)
{
 const struct ikev2_hdr *hdr;
 u32 length, message_id;
 const u8 *pos, *end;
 struct ikev2_payloads pl;

 wpa_printf(MSG_MSGDUMP, "IKEV2: Received message (len %lu)",
     (unsigned long) wpabuf_len(buf));

 if (wpabuf_len(buf) < sizeof(*hdr)) {
  wpa_printf(MSG_INFO, "IKEV2: Too short frame to include HDR");
  return -1;
 }

 hdr = (const struct ikev2_hdr *) wpabuf_head(buf);
 end = wpabuf_head_u8(buf) + wpabuf_len(buf);
 message_id = WPA_GET_BE32(hdr->message_id);
 length = WPA_GET_BE32(hdr->length);

 wpa_hexdump(MSG_DEBUG, "IKEV2:   IKE_SA Initiator's SPI",
      hdr->i_spi, IKEV2_SPI_LEN);
 wpa_hexdump(MSG_DEBUG, "IKEV2:   IKE_SA Initiator's SPI",
      hdr->r_spi, IKEV2_SPI_LEN);
 wpa_printf(MSG_DEBUG, "IKEV2:   Next Payload: %u  Version: 0x%x  "
     "Exchange Type: %u",
     hdr->next_payload, hdr->version, hdr->exchange_type);
 wpa_printf(MSG_DEBUG, "IKEV2:   Message ID: %u  Length: %u",
     message_id, length);

 if (hdr->version != IKEV2_VERSION) {
  wpa_printf(MSG_INFO, "IKEV2: Unsupported HDR version 0x%x "
      "(expected 0x%x)", hdr->version, IKEV2_VERSION);
  return -1;
 }

 if (length != wpabuf_len(buf)) {
  wpa_printf(MSG_INFO, "IKEV2: Invalid length (HDR: %lu != "
      "RX: %lu)", (unsigned long) length,
      (unsigned long) wpabuf_len(buf));
  return -1;
 }

 if (ikev2_validate_rx_state(data, hdr->exchange_type, message_id) < 0)
  return -1;

 if ((hdr->flags & (IKEV2_HDR_INITIATOR | IKEV2_HDR_RESPONSE)) !=
     IKEV2_HDR_RESPONSE) {
  wpa_printf(MSG_INFO, "IKEV2: Unexpected Flags value 0x%x",
      hdr->flags);
  return -1;
 }

 if (data->state != 128) {
  if (os_memcmp(data->i_spi, hdr->i_spi, IKEV2_SPI_LEN) != 0) {
   wpa_printf(MSG_INFO, "IKEV2: Unexpected IKE_SA "
       "Initiator's SPI");
   return -1;
  }
  if (os_memcmp(data->r_spi, hdr->r_spi, IKEV2_SPI_LEN) != 0) {
   wpa_printf(MSG_INFO, "IKEV2: Unexpected IKE_SA "
       "Responder's SPI");
   return -1;
  }
 }

 pos = (const u8 *) (hdr + 1);
 if (ikev2_parse_payloads(&pl, hdr->next_payload, pos, end) < 0)
  return -1;

 switch (data->state) {
 case 128:
  if (ikev2_process_sa_init(data, hdr, &pl) < 0)
   return -1;
  wpabuf_free(data->r_sign_msg);
  data->r_sign_msg = wpabuf_dup(buf);
  break;
 case 129:
  if (ikev2_process_sa_auth(data, hdr, &pl) < 0)
   return -1;
  break;
 case 131:
 case 130:
  break;
 }

 return 0;
}
