
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct TYPE_3__ {int dh; } ;
struct ikev2_responder_data {TYPE_2__* dh; TYPE_1__ proposal; int r_dh_private; } ;
struct ikev2_payload_hdr {int payload_length; scalar_t__ flags; int next_payload; } ;
struct TYPE_4__ {int prime_len; } ;


 int MSG_DEBUG ;
 int WPA_PUT_BE16 (int ,size_t) ;
 struct wpabuf* dh_init (TYPE_2__*,int *) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 struct ikev2_payload_hdr* wpabuf_put (struct wpabuf*,int) ;
 int wpabuf_put_be16 (struct wpabuf*,int ) ;
 int wpabuf_put_buf (struct wpabuf*,struct wpabuf*) ;

__attribute__((used)) static int ikev2_build_ker(struct ikev2_responder_data *data,
      struct wpabuf *msg, u8 next_payload)
{
 struct ikev2_payload_hdr *phdr;
 size_t plen;
 struct wpabuf *pv;

 wpa_printf(MSG_DEBUG, "IKEV2: Adding KEr payload");

 pv = dh_init(data->dh, &data->r_dh_private);
 if (pv == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "IKEV2: Failed to initialize DH");
  return -1;
 }


 phdr = wpabuf_put(msg, sizeof(*phdr));
 phdr->next_payload = next_payload;
 phdr->flags = 0;

 wpabuf_put_be16(msg, data->proposal.dh);
 wpabuf_put(msg, 2);




 wpabuf_put(msg, data->dh->prime_len - wpabuf_len(pv));
 wpabuf_put_buf(msg, pv);
 wpabuf_free(pv);

 plen = (u8 *) wpabuf_put(msg, 0) - (u8 *) phdr;
 WPA_PUT_BE16(phdr->payload_length, plen);
 return 0;
}
