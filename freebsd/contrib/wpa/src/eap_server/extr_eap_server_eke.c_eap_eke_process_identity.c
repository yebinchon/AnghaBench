
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {TYPE_2__* user; } ;
struct eap_eke_data {scalar_t__ state; int peerid_len; int msgs; int phase2; int * peerid; int peerid_type; int sess; } ;
struct TYPE_4__ {scalar_t__ password_len; int * password; TYPE_1__* methods; } ;
struct TYPE_3__ {scalar_t__ vendor; scalar_t__ method; } ;


 int COMMIT ;
 int EAP_EKE_FAIL_PASSWD_NOT_FOUND ;
 int EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR ;
 int EAP_EKE_FAIL_PROTO_ERROR ;
 int EAP_MAX_METHODS ;
 scalar_t__ EAP_TYPE_EKE ;
 scalar_t__ EAP_VENDOR_IETF ;
 scalar_t__ IDENTITY ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int eap_eke_fail (struct eap_eke_data*,int ) ;
 scalar_t__ eap_eke_session_init (int *,int const,int const,int const,int const) ;
 int eap_eke_state (struct eap_eke_data*,int ) ;
 scalar_t__ eap_user_get (struct eap_sm*,int *,int,int ) ;
 int os_free (int *) ;
 int * os_memdup (int const*,int) ;
 int supported_proposal (int const*) ;
 int wpa_hexdump_ascii (int ,char*,int *,int) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_len (struct wpabuf const*) ;
 int wpabuf_put_buf (int ,struct wpabuf const*) ;
 scalar_t__ wpabuf_resize (int *,int ) ;

__attribute__((used)) static void eap_eke_process_identity(struct eap_sm *sm,
         struct eap_eke_data *data,
         const struct wpabuf *respData,
         const u8 *payload, size_t payloadlen)
{
 const u8 *pos, *end;
 int i;

 wpa_printf(MSG_DEBUG, "EAP-EKE: Received Response/Identity");

 if (data->state != IDENTITY) {
  eap_eke_fail(data, EAP_EKE_FAIL_PROTO_ERROR);
  return;
 }

 pos = payload;
 end = payload + payloadlen;

 if (pos + 2 + 4 + 1 > end) {
  wpa_printf(MSG_INFO, "EAP-EKE: Too short EAP-EKE-ID payload");
  eap_eke_fail(data, EAP_EKE_FAIL_PROTO_ERROR);
  return;
 }

 if (*pos != 1) {
  wpa_printf(MSG_INFO, "EAP-EKE: Unexpected NumProposals %d (expected 1)",
      *pos);
  eap_eke_fail(data, EAP_EKE_FAIL_PROTO_ERROR);
  return;
 }

 pos += 2;

 if (!supported_proposal(pos)) {
  wpa_printf(MSG_INFO, "EAP-EKE: Unexpected Proposal (%u:%u:%u:%u)",
      pos[0], pos[1], pos[2], pos[3]);
  eap_eke_fail(data, EAP_EKE_FAIL_PROTO_ERROR);
  return;
 }

 wpa_printf(MSG_DEBUG, "EAP-EKE: Selected Proposal (%u:%u:%u:%u)",
     pos[0], pos[1], pos[2], pos[3]);
 if (eap_eke_session_init(&data->sess, pos[0], pos[1], pos[2], pos[3]) <
     0) {
  eap_eke_fail(data, EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
  return;
 }
 pos += 4;

 data->peerid_type = *pos++;
 os_free(data->peerid);
 data->peerid = os_memdup(pos, end - pos);
 if (data->peerid == ((void*)0)) {
  wpa_printf(MSG_INFO, "EAP-EKE: Failed to allocate memory for peerid");
  eap_eke_fail(data, EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
  return;
 }
 data->peerid_len = end - pos;
 wpa_printf(MSG_DEBUG, "EAP-EKE: Peer IDType %u", data->peerid_type);
 wpa_hexdump_ascii(MSG_DEBUG, "EAP-EKE: Peer Identity",
     data->peerid, data->peerid_len);

 if (eap_user_get(sm, data->peerid, data->peerid_len, data->phase2)) {
  wpa_printf(MSG_INFO, "EAP-EKE: Peer Identity not found from user database");
  eap_eke_fail(data, EAP_EKE_FAIL_PASSWD_NOT_FOUND);
  return;
 }

 for (i = 0; i < EAP_MAX_METHODS; i++) {
  if (sm->user->methods[i].vendor == EAP_VENDOR_IETF &&
      sm->user->methods[i].method == EAP_TYPE_EKE)
   break;
 }
 if (i == EAP_MAX_METHODS) {
  wpa_printf(MSG_INFO, "EAP-EKE: Matching user entry does not allow EAP-EKE");
  eap_eke_fail(data, EAP_EKE_FAIL_PASSWD_NOT_FOUND);
  return;
 }

 if (sm->user->password == ((void*)0) || sm->user->password_len == 0) {
  wpa_printf(MSG_INFO, "EAP-EKE: No password configured for peer");
  eap_eke_fail(data, EAP_EKE_FAIL_PASSWD_NOT_FOUND);
  return;
 }

 if (wpabuf_resize(&data->msgs, wpabuf_len(respData)) < 0) {
  eap_eke_fail(data, EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
  return;
 }
 wpabuf_put_buf(data->msgs, respData);

 eap_eke_state(data, COMMIT);
}
