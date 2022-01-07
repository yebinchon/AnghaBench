
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u32 ;
struct wpabuf {int dummy; } ;
struct ikev2_initiator_data {int r_spi; int i_spi; } ;
struct ikev2_hdr {int message_id; int flags; void* exchange_type; int version; void* next_payload; int r_spi; int i_spi; } ;


 int IKEV2_HDR_INITIATOR ;
 int IKEV2_SPI_LEN ;
 int IKEV2_VERSION ;
 int MSG_DEBUG ;
 int WPA_PUT_BE32 (int ,int ) ;
 int os_memcpy (int ,int ,int ) ;
 int wpa_printf (int ,char*) ;
 struct ikev2_hdr* wpabuf_put (struct wpabuf*,int) ;

__attribute__((used)) static void ikev2_build_hdr(struct ikev2_initiator_data *data,
       struct wpabuf *msg, u8 exchange_type,
       u8 next_payload, u32 message_id)
{
 struct ikev2_hdr *hdr;

 wpa_printf(MSG_DEBUG, "IKEV2: Adding HDR");


 hdr = wpabuf_put(msg, sizeof(*hdr));
 os_memcpy(hdr->i_spi, data->i_spi, IKEV2_SPI_LEN);
 os_memcpy(hdr->r_spi, data->r_spi, IKEV2_SPI_LEN);
 hdr->next_payload = next_payload;
 hdr->version = IKEV2_VERSION;
 hdr->exchange_type = exchange_type;
 hdr->flags = IKEV2_HDR_INITIATOR;
 WPA_PUT_BE32(hdr->message_id, message_id);
}
