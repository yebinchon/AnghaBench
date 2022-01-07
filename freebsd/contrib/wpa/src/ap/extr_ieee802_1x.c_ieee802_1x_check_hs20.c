
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sta_info {scalar_t__ hs20_deauth_requested; scalar_t__ remediation; } ;
struct radius_msg {int dummy; } ;
struct hostapd_data {int dummy; } ;


 int RADIUS_ATTR_VENDOR_SPECIFIC ;





 scalar_t__ RADIUS_VENDOR_ID_WFA ;
 scalar_t__ WPA_GET_BE32 (int*) ;
 int ieee802_1x_hs20_deauth_req (struct hostapd_data*,struct sta_info*,int*,int) ;
 int ieee802_1x_hs20_session_info (struct hostapd_data*,struct sta_info*,int*,int,int) ;
 int ieee802_1x_hs20_sub_rem (struct sta_info*,int*,int) ;
 int ieee802_1x_hs20_t_c_filtering (struct hostapd_data*,struct sta_info*,int*,int) ;
 int ieee802_1x_hs20_t_c_url (struct hostapd_data*,struct sta_info*,int*,int) ;
 scalar_t__ radius_msg_get_attr_ptr (struct radius_msg*,int ,int**,size_t*,int*) ;

__attribute__((used)) static void ieee802_1x_check_hs20(struct hostapd_data *hapd,
      struct sta_info *sta,
      struct radius_msg *msg,
      int session_timeout)
{
}
