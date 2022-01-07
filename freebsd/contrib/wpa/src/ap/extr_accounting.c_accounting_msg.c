
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct sta_info {char* identity; char* radius_cui; scalar_t__ ipaddr; int eapol_sm; int addr; } ;
struct radius_msg {int dummy; } ;
struct os_time {int sec; } ;
struct hostapd_data {TYPE_1__* conf; int radius; } ;
typedef int buf ;
struct TYPE_2__ {int radius_acct_req_attr; scalar_t__ ieee802_1x; } ;


 int MAC2STR (int ) ;
 int MSG_ERROR ;
 int MSG_INFO ;
 int RADIUS_ACCT_AUTHENTIC_LOCAL ;
 int RADIUS_ACCT_AUTHENTIC_RADIUS ;
 int RADIUS_ADDR_FORMAT ;
 int RADIUS_ATTR_ACCT_AUTHENTIC ;
 int RADIUS_ATTR_ACCT_DELAY_TIME ;
 int RADIUS_ATTR_ACCT_STATUS_TYPE ;
 int RADIUS_ATTR_CHARGEABLE_USER_IDENTITY ;
 int RADIUS_ATTR_CLASS ;
 int RADIUS_ATTR_EVENT_TIMESTAMP ;
 int RADIUS_ATTR_FRAMED_IP_ADDRESS ;
 int RADIUS_ATTR_USER_NAME ;
 int RADIUS_CODE_ACCOUNTING_REQUEST ;
 scalar_t__ add_common_radius_attr (struct hostapd_data*,int ,struct sta_info*,struct radius_msg*) ;
 scalar_t__ add_sqlite_radius_attr (struct hostapd_data*,struct sta_info*,struct radius_msg*,int) ;
 int be_to_host32 (scalar_t__) ;
 int hostapd_config_get_radius_attr (int ,int ) ;
 int * ieee802_1x_get_identity (int ,size_t*) ;
 int * ieee802_1x_get_radius_class (int ,size_t*,int) ;
 struct wpabuf* ieee802_1x_get_radius_cui (int ) ;
 int os_get_time (struct os_time*) ;
 int os_snprintf (char*,int,int ,int ) ;
 size_t os_strlen (char*) ;
 int radius_client_get_id (int ) ;
 int radius_msg_add_attr (struct radius_msg*,int ,int *,size_t) ;
 int radius_msg_add_attr_int32 (struct radius_msg*,int ,int) ;
 int radius_msg_free (struct radius_msg*) ;
 struct radius_msg* radius_msg_new (int ,int ) ;
 int wpa_printf (int ,char*) ;
 int * wpabuf_head (struct wpabuf*) ;
 size_t wpabuf_len (struct wpabuf*) ;

__attribute__((used)) static struct radius_msg * accounting_msg(struct hostapd_data *hapd,
       struct sta_info *sta,
       int status_type)
{
 struct radius_msg *msg;
 char buf[128];
 u8 *val;
 size_t len;
 int i;
 struct wpabuf *b;
 struct os_time now;

 msg = radius_msg_new(RADIUS_CODE_ACCOUNTING_REQUEST,
        radius_client_get_id(hapd->radius));
 if (msg == ((void*)0)) {
  wpa_printf(MSG_INFO, "Could not create new RADIUS packet");
  return ((void*)0);
 }

 if (!radius_msg_add_attr_int32(msg, RADIUS_ATTR_ACCT_STATUS_TYPE,
           status_type)) {
  wpa_printf(MSG_INFO, "Could not add Acct-Status-Type");
  goto fail;
 }

 if (sta) {
  if (!hostapd_config_get_radius_attr(
       hapd->conf->radius_acct_req_attr,
       RADIUS_ATTR_ACCT_AUTHENTIC) &&
      !radius_msg_add_attr_int32(msg, RADIUS_ATTR_ACCT_AUTHENTIC,
            hapd->conf->ieee802_1x ?
            RADIUS_ACCT_AUTHENTIC_RADIUS :
            RADIUS_ACCT_AUTHENTIC_LOCAL)) {
   wpa_printf(MSG_INFO, "Could not add Acct-Authentic");
   goto fail;
  }


  val = ieee802_1x_get_identity(sta->eapol_sm, &len);


  if (!val && sta->identity) {
   val = (u8 *) sta->identity;
   len = os_strlen(sta->identity);
  }



  if (!val) {
   os_snprintf(buf, sizeof(buf), RADIUS_ADDR_FORMAT,
        MAC2STR(sta->addr));
   val = (u8 *) buf;
   len = os_strlen(buf);
  }

  if (!radius_msg_add_attr(msg, RADIUS_ATTR_USER_NAME, val,
      len)) {
   wpa_printf(MSG_INFO, "Could not add User-Name");
   goto fail;
  }
 }

 if (add_common_radius_attr(hapd, hapd->conf->radius_acct_req_attr, sta,
       msg) < 0)
  goto fail;

 if (sta && add_sqlite_radius_attr(hapd, sta, msg, 1) < 0)
  goto fail;

 if (sta) {
  for (i = 0; ; i++) {
   val = ieee802_1x_get_radius_class(sta->eapol_sm, &len,
         i);
   if (val == ((void*)0))
    break;

   if (!radius_msg_add_attr(msg, RADIUS_ATTR_CLASS,
       val, len)) {
    wpa_printf(MSG_INFO, "Could not add Class");
    goto fail;
   }
  }

  b = ieee802_1x_get_radius_cui(sta->eapol_sm);
  if (b &&
      !radius_msg_add_attr(msg,
      RADIUS_ATTR_CHARGEABLE_USER_IDENTITY,
      wpabuf_head(b), wpabuf_len(b))) {
   wpa_printf(MSG_ERROR, "Could not add CUI");
   goto fail;
  }

  if (!b && sta->radius_cui &&
      !radius_msg_add_attr(msg,
      RADIUS_ATTR_CHARGEABLE_USER_IDENTITY,
      (u8 *) sta->radius_cui,
      os_strlen(sta->radius_cui))) {
   wpa_printf(MSG_ERROR, "Could not add CUI from ACL");
   goto fail;
  }

  if (sta->ipaddr &&
      !radius_msg_add_attr_int32(msg,
            RADIUS_ATTR_FRAMED_IP_ADDRESS,
            be_to_host32(sta->ipaddr))) {
   wpa_printf(MSG_ERROR,
       "Could not add Framed-IP-Address");
   goto fail;
  }
 }

 os_get_time(&now);
 if (now.sec > 1000000000 &&
     !radius_msg_add_attr_int32(msg, RADIUS_ATTR_EVENT_TIMESTAMP,
           now.sec)) {
  wpa_printf(MSG_INFO, "Could not add Event-Timestamp");
  goto fail;
 }





 if (!radius_msg_add_attr_int32(msg, RADIUS_ATTR_ACCT_DELAY_TIME, 0)) {
  wpa_printf(MSG_INFO, "Could not add Acct-Delay-Time");
  goto fail;
 }

 return msg;

 fail:
 radius_msg_free(msg);
 return ((void*)0);
}
