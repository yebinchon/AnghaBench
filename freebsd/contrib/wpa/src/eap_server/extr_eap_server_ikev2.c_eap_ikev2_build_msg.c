
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct ikev2_integ_alg {size_t hash_len; } ;
struct TYPE_5__ {int SK_integ_len; int SK_ai; } ;
struct TYPE_4__ {int integ; } ;
struct TYPE_6__ {TYPE_2__ keys; TYPE_1__ proposal; } ;
struct eap_ikev2_data {size_t out_used; int fragment_size; struct wpabuf* out_buf; TYPE_3__ ikev2; scalar_t__ keys_ready; } ;


 int EAP_CODE_REQUEST ;
 int EAP_TYPE_IKEV2 ;
 int EAP_VENDOR_IETF ;
 int IKEV2_FLAGS_ICV_INCLUDED ;
 int IKEV2_FLAGS_LENGTH_INCLUDED ;
 int IKEV2_FLAGS_MORE_FRAGMENTS ;
 int MSG_DEBUG ;
 int WAIT_FRAG_ACK ;
 int eap_ikev2_state (struct eap_ikev2_data*,int ) ;
 struct wpabuf* eap_msg_alloc (int ,int ,size_t,int ,int) ;
 struct ikev2_integ_alg* ikev2_get_integ (int ) ;
 int ikev2_integ_hash (int ,int ,int ,int const*,size_t,int ) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_free (struct wpabuf*) ;
 int* wpabuf_head (struct wpabuf*) ;
 scalar_t__ wpabuf_head_u8 (struct wpabuf*) ;
 size_t wpabuf_len (struct wpabuf*) ;
 int wpabuf_put (struct wpabuf*,size_t) ;
 int wpabuf_put_be32 (struct wpabuf*,size_t) ;
 int wpabuf_put_data (struct wpabuf*,scalar_t__,size_t) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

__attribute__((used)) static struct wpabuf * eap_ikev2_build_msg(struct eap_ikev2_data *data, u8 id)
{
 struct wpabuf *req;
 u8 flags;
 size_t send_len, plen, icv_len = 0;

 wpa_printf(MSG_DEBUG, "EAP-IKEV2: Generating Request");

 flags = 0;
 send_len = wpabuf_len(data->out_buf) - data->out_used;
 if (1 + send_len > data->fragment_size) {
  send_len = data->fragment_size - 1;
  flags |= IKEV2_FLAGS_MORE_FRAGMENTS;
  if (data->out_used == 0) {
   flags |= IKEV2_FLAGS_LENGTH_INCLUDED;
   send_len -= 4;
  }
 }

 plen = 1 + send_len;
 if (flags & IKEV2_FLAGS_LENGTH_INCLUDED)
  plen += 4;
 if (data->keys_ready) {
  const struct ikev2_integ_alg *integ;
  wpa_printf(MSG_DEBUG, "EAP-IKEV2: Add Integrity Checksum "
      "Data");
  flags |= IKEV2_FLAGS_ICV_INCLUDED;
  integ = ikev2_get_integ(data->ikev2.proposal.integ);
  if (integ == ((void*)0)) {
   wpa_printf(MSG_DEBUG, "EAP-IKEV2: Unknown INTEG "
       "transform / cannot generate ICV");
   return ((void*)0);
  }
  icv_len = integ->hash_len;

  plen += icv_len;
 }
 req = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_IKEV2, plen,
       EAP_CODE_REQUEST, id);
 if (req == ((void*)0))
  return ((void*)0);

 wpabuf_put_u8(req, flags);
 if (flags & IKEV2_FLAGS_LENGTH_INCLUDED)
  wpabuf_put_be32(req, wpabuf_len(data->out_buf));

 wpabuf_put_data(req, wpabuf_head_u8(data->out_buf) + data->out_used,
   send_len);
 data->out_used += send_len;

 if (flags & IKEV2_FLAGS_ICV_INCLUDED) {
  const u8 *msg = wpabuf_head(req);
  size_t len = wpabuf_len(req);
  ikev2_integ_hash(data->ikev2.proposal.integ,
     data->ikev2.keys.SK_ai,
     data->ikev2.keys.SK_integ_len,
     msg, len, wpabuf_put(req, icv_len));
 }

 if (data->out_used == wpabuf_len(data->out_buf)) {
  wpa_printf(MSG_DEBUG, "EAP-IKEV2: Sending out %lu bytes "
      "(message sent completely)",
      (unsigned long) send_len);
  wpabuf_free(data->out_buf);
  data->out_buf = ((void*)0);
  data->out_used = 0;
 } else {
  wpa_printf(MSG_DEBUG, "EAP-IKEV2: Sending out %lu bytes "
      "(%lu more to send)", (unsigned long) send_len,
      (unsigned long) wpabuf_len(data->out_buf) -
      data->out_used);
  eap_ikev2_state(data, WAIT_FRAG_ACK);
 }

 return req;
}
