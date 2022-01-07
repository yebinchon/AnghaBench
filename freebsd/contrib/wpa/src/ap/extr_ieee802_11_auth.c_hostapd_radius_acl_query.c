
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct radius_msg {int dummy; } ;
struct hostapd_data {int radius; TYPE_3__* conf; } ;
struct hostapd_acl_query_data {int radius_id; } ;
typedef int buf ;
struct TYPE_6__ {int radius_auth_req_attr; TYPE_2__* radius; } ;
struct TYPE_5__ {TYPE_1__* auth_server; } ;
struct TYPE_4__ {int shared_secret_len; int shared_secret; } ;


 int MAC2STR (int const*) ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int RADIUS_802_1X_ADDR_FORMAT ;
 int RADIUS_ADDR_FORMAT ;
 int RADIUS_ATTR_CALLING_STATION_ID ;
 int RADIUS_ATTR_CONNECT_INFO ;
 int RADIUS_ATTR_USER_NAME ;
 int RADIUS_AUTH ;
 int RADIUS_CODE_ACCESS_REQUEST ;
 scalar_t__ add_common_radius_attr (struct hostapd_data*,int ,int *,struct radius_msg*) ;
 int os_snprintf (char*,int,char*,...) ;
 int os_strlen (char*) ;
 int radius_client_get_id (int ) ;
 scalar_t__ radius_client_send (int ,struct radius_msg*,int ,int const*) ;
 int radius_msg_add_attr (struct radius_msg*,int ,int *,int ) ;
 int radius_msg_add_attr_user_password (struct radius_msg*,int *,int ,int ,int ) ;
 int radius_msg_free (struct radius_msg*) ;
 scalar_t__ radius_msg_make_authenticator (struct radius_msg*) ;
 struct radius_msg* radius_msg_new (int ,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int hostapd_radius_acl_query(struct hostapd_data *hapd, const u8 *addr,
        struct hostapd_acl_query_data *query)
{
 struct radius_msg *msg;
 char buf[128];

 query->radius_id = radius_client_get_id(hapd->radius);
 msg = radius_msg_new(RADIUS_CODE_ACCESS_REQUEST, query->radius_id);
 if (msg == ((void*)0))
  return -1;

 if (radius_msg_make_authenticator(msg) < 0) {
  wpa_printf(MSG_INFO, "Could not make Request Authenticator");
  goto fail;
 }

 os_snprintf(buf, sizeof(buf), RADIUS_ADDR_FORMAT, MAC2STR(addr));
 if (!radius_msg_add_attr(msg, RADIUS_ATTR_USER_NAME, (u8 *) buf,
     os_strlen(buf))) {
  wpa_printf(MSG_DEBUG, "Could not add User-Name");
  goto fail;
 }

 if (!radius_msg_add_attr_user_password(
      msg, (u8 *) buf, os_strlen(buf),
      hapd->conf->radius->auth_server->shared_secret,
      hapd->conf->radius->auth_server->shared_secret_len)) {
  wpa_printf(MSG_DEBUG, "Could not add User-Password");
  goto fail;
 }

 if (add_common_radius_attr(hapd, hapd->conf->radius_auth_req_attr,
       ((void*)0), msg) < 0)
  goto fail;

 os_snprintf(buf, sizeof(buf), RADIUS_802_1X_ADDR_FORMAT,
      MAC2STR(addr));
 if (!radius_msg_add_attr(msg, RADIUS_ATTR_CALLING_STATION_ID,
     (u8 *) buf, os_strlen(buf))) {
  wpa_printf(MSG_DEBUG, "Could not add Calling-Station-Id");
  goto fail;
 }

 os_snprintf(buf, sizeof(buf), "CONNECT 11Mbps 802.11b");
 if (!radius_msg_add_attr(msg, RADIUS_ATTR_CONNECT_INFO,
     (u8 *) buf, os_strlen(buf))) {
  wpa_printf(MSG_DEBUG, "Could not add Connect-Info");
  goto fail;
 }

 if (radius_client_send(hapd->radius, msg, RADIUS_AUTH, addr) < 0)
  goto fail;
 return 0;

 fail:
 radius_msg_free(msg);
 return -1;
}
