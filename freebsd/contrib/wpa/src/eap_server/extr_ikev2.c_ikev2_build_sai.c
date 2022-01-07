
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct ikev2_transform {int type; int transform_id; int transform_type; int transform_length; } ;
struct ikev2_proposal {int num_transforms; int proposal_length; int protocol_id; int proposal_num; } ;
struct ikev2_payload_hdr {int payload_length; scalar_t__ flags; int next_payload; } ;
struct TYPE_2__ {size_t encr; size_t prf; size_t integ; size_t dh; int proposal_num; } ;
struct ikev2_initiator_data {TYPE_1__ proposal; } ;


 size_t ENCR_AES_CBC ;
 int IKEV2_PROTOCOL_IKE ;
 int IKEV2_TRANSFORM_DH ;
 int IKEV2_TRANSFORM_ENCR ;
 int IKEV2_TRANSFORM_INTEG ;
 int IKEV2_TRANSFORM_PRF ;
 int MSG_DEBUG ;
 int WPA_PUT_BE16 (int ,size_t) ;
 int wpa_printf (int ,char*) ;
 void* wpabuf_put (struct wpabuf*,int) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;

__attribute__((used)) static int ikev2_build_sai(struct ikev2_initiator_data *data,
       struct wpabuf *msg, u8 next_payload)
{
 struct ikev2_payload_hdr *phdr;
 size_t plen;
 struct ikev2_proposal *p;
 struct ikev2_transform *t;

 wpa_printf(MSG_DEBUG, "IKEV2: Adding SAi payload");


 phdr = wpabuf_put(msg, sizeof(*phdr));
 phdr->next_payload = next_payload;
 phdr->flags = 0;


 p = wpabuf_put(msg, sizeof(*p));
 p->proposal_num = data->proposal.proposal_num;
 p->protocol_id = IKEV2_PROTOCOL_IKE;
 p->num_transforms = 4;

 t = wpabuf_put(msg, sizeof(*t));
 t->type = 3;
 t->transform_type = IKEV2_TRANSFORM_ENCR;
 WPA_PUT_BE16(t->transform_id, data->proposal.encr);
 if (data->proposal.encr == ENCR_AES_CBC) {

  wpabuf_put_be16(msg, 0x800e);
  wpabuf_put_be16(msg, 128);
 }
 plen = (u8 *) wpabuf_put(msg, 0) - (u8 *) t;
 WPA_PUT_BE16(t->transform_length, plen);

 t = wpabuf_put(msg, sizeof(*t));
 t->type = 3;
 WPA_PUT_BE16(t->transform_length, sizeof(*t));
 t->transform_type = IKEV2_TRANSFORM_PRF;
 WPA_PUT_BE16(t->transform_id, data->proposal.prf);

 t = wpabuf_put(msg, sizeof(*t));
 t->type = 3;
 WPA_PUT_BE16(t->transform_length, sizeof(*t));
 t->transform_type = IKEV2_TRANSFORM_INTEG;
 WPA_PUT_BE16(t->transform_id, data->proposal.integ);

 t = wpabuf_put(msg, sizeof(*t));
 WPA_PUT_BE16(t->transform_length, sizeof(*t));
 t->transform_type = IKEV2_TRANSFORM_DH;
 WPA_PUT_BE16(t->transform_id, data->proposal.dh);

 plen = (u8 *) wpabuf_put(msg, 0) - (u8 *) p;
 WPA_PUT_BE16(p->proposal_length, plen);

 plen = (u8 *) wpabuf_put(msg, 0) - (u8 *) phdr;
 WPA_PUT_BE16(phdr->payload_length, plen);

 return 0;
}
