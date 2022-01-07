
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_3__ {int access_rejects; } ;
struct radius_server_data {int auth_sock; TYPE_1__ counters; } ;
struct radius_msg {int dummy; } ;
struct radius_hdr {int authenticator; int identifier; } ;
struct TYPE_4__ {int access_rejects; } ;
struct radius_client {TYPE_2__ counters; int shared_secret_len; scalar_t__ shared_secret; } ;
struct eap_hdr {int length; scalar_t__ identifier; int code; } ;
typedef int socklen_t ;
typedef int eapfail ;


 int EAP_CODE_FAILURE ;
 int MSG_INFO ;
 scalar_t__ MSG_MSGDUMP ;
 int RADIUS_ATTR_PROXY_STATE ;
 int RADIUS_CODE_ACCESS_REJECT ;
 int RADIUS_DEBUG (char*,...) ;
 int errno ;
 int host_to_be16 (int) ;
 int os_memset (struct eap_hdr*,int ,int) ;
 int radius_msg_add_eap (struct radius_msg*,int *,int) ;
 scalar_t__ radius_msg_copy_attr (struct radius_msg*,struct radius_msg*,int ) ;
 int radius_msg_dump (struct radius_msg*) ;
 scalar_t__ radius_msg_finish_srv (struct radius_msg*,int *,int ,int ) ;
 int radius_msg_free (struct radius_msg*) ;
 struct wpabuf* radius_msg_get_buf (struct radius_msg*) ;
 struct radius_hdr* radius_msg_get_hdr (struct radius_msg*) ;
 struct radius_msg* radius_msg_new (int ,int ) ;
 scalar_t__ sendto (int ,int ,int ,int ,struct sockaddr*,int) ;
 int strerror (int ) ;
 scalar_t__ wpa_debug_level ;
 int wpa_printf (int ,char*,int ) ;
 int wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;

__attribute__((used)) static int radius_server_reject(struct radius_server_data *data,
    struct radius_client *client,
    struct radius_msg *request,
    struct sockaddr *from, socklen_t fromlen,
    const char *from_addr, int from_port)
{
 struct radius_msg *msg;
 int ret = 0;
 struct eap_hdr eapfail;
 struct wpabuf *buf;
 struct radius_hdr *hdr = radius_msg_get_hdr(request);

 RADIUS_DEBUG("Reject invalid request from %s:%d",
       from_addr, from_port);

 msg = radius_msg_new(RADIUS_CODE_ACCESS_REJECT, hdr->identifier);
 if (msg == ((void*)0)) {
  return -1;
 }

 os_memset(&eapfail, 0, sizeof(eapfail));
 eapfail.code = EAP_CODE_FAILURE;
 eapfail.identifier = 0;
 eapfail.length = host_to_be16(sizeof(eapfail));

 if (!radius_msg_add_eap(msg, (u8 *) &eapfail, sizeof(eapfail))) {
  RADIUS_DEBUG("Failed to add EAP-Message attribute");
 }

 if (radius_msg_copy_attr(msg, request, RADIUS_ATTR_PROXY_STATE) < 0) {
  RADIUS_DEBUG("Failed to copy Proxy-State attribute(s)");
  radius_msg_free(msg);
  return -1;
 }

 if (radius_msg_finish_srv(msg, (u8 *) client->shared_secret,
      client->shared_secret_len,
      hdr->authenticator) <
     0) {
  RADIUS_DEBUG("Failed to add Message-Authenticator attribute");
 }

 if (wpa_debug_level <= MSG_MSGDUMP) {
  radius_msg_dump(msg);
 }

 data->counters.access_rejects++;
 client->counters.access_rejects++;
 buf = radius_msg_get_buf(msg);
 if (sendto(data->auth_sock, wpabuf_head(buf), wpabuf_len(buf), 0,
     (struct sockaddr *) from, sizeof(*from)) < 0) {
  wpa_printf(MSG_INFO, "sendto[RADIUS SRV]: %s", strerror(errno));
  ret = -1;
 }

 radius_msg_free(msg);

 return ret;
}
