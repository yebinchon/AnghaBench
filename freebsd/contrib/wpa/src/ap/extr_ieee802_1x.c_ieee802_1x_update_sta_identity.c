
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sta_info {int addr; struct eapol_state_machine* eapol_sm; } ;
struct radius_msg {int dummy; } ;
struct hostapd_data {int dummy; } ;
struct eapol_state_machine {size_t identity_len; int * identity; } ;


 int HOSTAPD_LEVEL_DEBUG ;
 int HOSTAPD_MODULE_IEEE8021X ;
 int RADIUS_ATTR_USER_NAME ;
 scalar_t__ dup_binstr (int *,size_t) ;
 int hostapd_logger (struct hostapd_data*,int ,int ,int ,char*,char*,char*) ;
 int os_free (int *) ;
 scalar_t__ radius_msg_get_attr_ptr (struct radius_msg*,int ,int **,size_t*,int *) ;

__attribute__((used)) static void ieee802_1x_update_sta_identity(struct hostapd_data *hapd,
        struct sta_info *sta,
        struct radius_msg *msg)
{
 u8 *buf, *identity;
 size_t len;
 struct eapol_state_machine *sm = sta->eapol_sm;

 if (sm == ((void*)0))
  return;

 if (radius_msg_get_attr_ptr(msg, RADIUS_ATTR_USER_NAME, &buf, &len,
        ((void*)0)) < 0)
  return;

 identity = (u8 *) dup_binstr(buf, len);
 if (identity == ((void*)0))
  return;

 hostapd_logger(hapd, sta->addr, HOSTAPD_MODULE_IEEE8021X,
         HOSTAPD_LEVEL_DEBUG, "old identity '%s' updated with "
         "User-Name from Access-Accept '%s'",
         sm->identity ? (char *) sm->identity : "N/A",
         (char *) identity);

 os_free(sm->identity);
 sm->identity = identity;
 sm->identity_len = len;
}
