
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct ikev2_responder_data {int IDr_len; int * IDr; } ;
struct ikev2_payload_hdr {int payload_length; scalar_t__ flags; int next_payload; } ;


 int ID_KEY_ID ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int WPA_PUT_BE16 (int ,size_t) ;
 int wpa_printf (int ,char*) ;
 struct ikev2_payload_hdr* wpabuf_put (struct wpabuf*,int) ;
 int wpabuf_put_data (struct wpabuf*,int *,int ) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

__attribute__((used)) static int ikev2_build_idr(struct ikev2_responder_data *data,
      struct wpabuf *msg, u8 next_payload)
{
 struct ikev2_payload_hdr *phdr;
 size_t plen;

 wpa_printf(MSG_DEBUG, "IKEV2: Adding IDr payload");

 if (data->IDr == ((void*)0)) {
  wpa_printf(MSG_INFO, "IKEV2: No IDr available");
  return -1;
 }


 phdr = wpabuf_put(msg, sizeof(*phdr));
 phdr->next_payload = next_payload;
 phdr->flags = 0;
 wpabuf_put_u8(msg, ID_KEY_ID);
 wpabuf_put(msg, 3);
 wpabuf_put_data(msg, data->IDr, data->IDr_len);
 plen = (u8 *) wpabuf_put(msg, 0) - (u8 *) phdr;
 WPA_PUT_BE16(phdr->payload_length, plen);
 return 0;
}
