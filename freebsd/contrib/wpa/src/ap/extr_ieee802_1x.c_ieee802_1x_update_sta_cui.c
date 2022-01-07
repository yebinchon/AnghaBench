
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct sta_info {struct eapol_state_machine* eapol_sm; } ;
struct radius_msg {int dummy; } ;
struct hostapd_data {int dummy; } ;
struct eapol_state_machine {struct wpabuf* radius_cui; } ;


 int RADIUS_ATTR_CHARGEABLE_USER_IDENTITY ;
 scalar_t__ radius_msg_get_attr_ptr (struct radius_msg*,int ,int **,size_t*,int *) ;
 struct wpabuf* wpabuf_alloc_copy (int *,size_t) ;
 int wpabuf_free (struct wpabuf*) ;

__attribute__((used)) static void ieee802_1x_update_sta_cui(struct hostapd_data *hapd,
          struct sta_info *sta,
          struct radius_msg *msg)
{
 struct eapol_state_machine *sm = sta->eapol_sm;
 struct wpabuf *cui;
 u8 *buf;
 size_t len;

 if (sm == ((void*)0))
  return;

 if (radius_msg_get_attr_ptr(msg, RADIUS_ATTR_CHARGEABLE_USER_IDENTITY,
        &buf, &len, ((void*)0)) < 0)
  return;

 cui = wpabuf_alloc_copy(buf, len);
 if (cui == ((void*)0))
  return;

 wpabuf_free(sm->radius_cui);
 sm->radius_cui = cui;
}
