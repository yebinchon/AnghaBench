
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct sta_info {int radius_das_match; struct sta_info* next; TYPE_1__* eapol_sm; scalar_t__ acct_session_id; } ;
struct radius_das_attrs {int acct_session_id_len; int acct_multi_session_id_len; char* cui; size_t cui_len; char* user_name; size_t user_name_len; int * acct_multi_session_id; int * acct_session_id; scalar_t__ sta_addr; } ;
struct hostapd_data {struct sta_info* sta_list; } ;
typedef int buf ;
struct TYPE_3__ {scalar_t__ acct_multi_session_id; } ;


 int MSG_DEBUG ;
 struct sta_info* ap_get_sta (struct hostapd_data*,scalar_t__) ;
 int * ieee802_1x_get_identity (TYPE_1__*,size_t*) ;
 struct wpabuf* ieee802_1x_get_radius_cui (TYPE_1__*) ;
 scalar_t__ os_memcmp (int *,char*,size_t) ;
 int os_snprintf (char*,int,char*,unsigned long long) ;
 int wpa_printf (int ,char*) ;
 int * wpabuf_head (struct wpabuf*) ;
 size_t wpabuf_len (struct wpabuf*) ;

__attribute__((used)) static struct sta_info * hostapd_das_find_sta(struct hostapd_data *hapd,
           struct radius_das_attrs *attr,
           int *multi)
{
 struct sta_info *selected, *sta;
 char buf[128];
 int num_attr = 0;
 int count;

 *multi = 0;

 for (sta = hapd->sta_list; sta; sta = sta->next)
  sta->radius_das_match = 1;

 if (attr->sta_addr) {
  num_attr++;
  sta = ap_get_sta(hapd, attr->sta_addr);
  if (!sta) {
   wpa_printf(MSG_DEBUG,
       "RADIUS DAS: No Calling-Station-Id match");
   return ((void*)0);
  }

  selected = sta;
  for (sta = hapd->sta_list; sta; sta = sta->next) {
   if (sta != selected)
    sta->radius_das_match = 0;
  }
  wpa_printf(MSG_DEBUG, "RADIUS DAS: Calling-Station-Id match");
 }

 if (attr->acct_session_id) {
  num_attr++;
  if (attr->acct_session_id_len != 16) {
   wpa_printf(MSG_DEBUG,
       "RADIUS DAS: Acct-Session-Id cannot match");
   return ((void*)0);
  }
  count = 0;

  for (sta = hapd->sta_list; sta; sta = sta->next) {
   if (!sta->radius_das_match)
    continue;
   os_snprintf(buf, sizeof(buf), "%016llX",
        (unsigned long long) sta->acct_session_id);
   if (os_memcmp(attr->acct_session_id, buf, 16) != 0)
    sta->radius_das_match = 0;
   else
    count++;
  }

  if (count == 0) {
   wpa_printf(MSG_DEBUG,
       "RADIUS DAS: No matches remaining after Acct-Session-Id check");
   return ((void*)0);
  }
  wpa_printf(MSG_DEBUG, "RADIUS DAS: Acct-Session-Id match");
 }

 if (attr->acct_multi_session_id) {
  num_attr++;
  if (attr->acct_multi_session_id_len != 16) {
   wpa_printf(MSG_DEBUG,
       "RADIUS DAS: Acct-Multi-Session-Id cannot match");
   return ((void*)0);
  }
  count = 0;

  for (sta = hapd->sta_list; sta; sta = sta->next) {
   if (!sta->radius_das_match)
    continue;
   if (!sta->eapol_sm ||
       !sta->eapol_sm->acct_multi_session_id) {
    sta->radius_das_match = 0;
    continue;
   }
   os_snprintf(buf, sizeof(buf), "%016llX",
        (unsigned long long)
        sta->eapol_sm->acct_multi_session_id);
   if (os_memcmp(attr->acct_multi_session_id, buf, 16) !=
       0)
    sta->radius_das_match = 0;
   else
    count++;
  }

  if (count == 0) {
   wpa_printf(MSG_DEBUG,
       "RADIUS DAS: No matches remaining after Acct-Multi-Session-Id check");
   return ((void*)0);
  }
  wpa_printf(MSG_DEBUG,
      "RADIUS DAS: Acct-Multi-Session-Id match");
 }

 if (attr->cui) {
  num_attr++;
  count = 0;

  for (sta = hapd->sta_list; sta; sta = sta->next) {
   struct wpabuf *cui;

   if (!sta->radius_das_match)
    continue;
   cui = ieee802_1x_get_radius_cui(sta->eapol_sm);
   if (!cui || wpabuf_len(cui) != attr->cui_len ||
       os_memcmp(wpabuf_head(cui), attr->cui,
          attr->cui_len) != 0)
    sta->radius_das_match = 0;
   else
    count++;
  }

  if (count == 0) {
   wpa_printf(MSG_DEBUG,
       "RADIUS DAS: No matches remaining after Chargeable-User-Identity check");
   return ((void*)0);
  }
  wpa_printf(MSG_DEBUG,
      "RADIUS DAS: Chargeable-User-Identity match");
 }

 if (attr->user_name) {
  num_attr++;
  count = 0;

  for (sta = hapd->sta_list; sta; sta = sta->next) {
   u8 *identity;
   size_t identity_len;

   if (!sta->radius_das_match)
    continue;
   identity = ieee802_1x_get_identity(sta->eapol_sm,
          &identity_len);
   if (!identity ||
       identity_len != attr->user_name_len ||
       os_memcmp(identity, attr->user_name, identity_len)
       != 0)
    sta->radius_das_match = 0;
   else
    count++;
  }

  if (count == 0) {
   wpa_printf(MSG_DEBUG,
       "RADIUS DAS: No matches remaining after User-Name check");
   return ((void*)0);
  }
  wpa_printf(MSG_DEBUG,
      "RADIUS DAS: User-Name match");
 }

 if (num_attr == 0) {





  wpa_printf(MSG_DEBUG,
      "RADIUS DAS: No session identification attributes included");
  return ((void*)0);
 }

 selected = ((void*)0);
 for (sta = hapd->sta_list; sta; sta = sta->next) {
  if (sta->radius_das_match) {
   if (selected) {
    *multi = 1;
    return ((void*)0);
   }
   selected = sta;
  }
 }

 return selected;
}
