
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct TYPE_3__ {int integ; } ;
struct TYPE_4__ {int keys; TYPE_1__ proposal; } ;
struct eap_ikev2_data {scalar_t__ keys_ready; TYPE_2__ ikev2; } ;


 int IKEV2_FLAGS_ICV_INCLUDED ;
 int MSG_INFO ;
 int eap_ikev2_validate_icv (int ,int *,int,struct wpabuf const*,int const*,int const*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int eap_ikev2_process_icv(struct eap_ikev2_data *data,
     const struct wpabuf *reqData,
     u8 flags, const u8 *pos, const u8 **end,
     int frag_ack)
{
 if (flags & IKEV2_FLAGS_ICV_INCLUDED) {
  int icv_len = eap_ikev2_validate_icv(
   data->ikev2.proposal.integ, &data->ikev2.keys, 1,
   reqData, pos, *end);
  if (icv_len < 0)
   return -1;

  *end -= icv_len;
 } else if (data->keys_ready && !frag_ack) {
  wpa_printf(MSG_INFO, "EAP-IKEV2: The message should have "
      "included integrity checksum");
  return -1;
 }

 return 0;
}
