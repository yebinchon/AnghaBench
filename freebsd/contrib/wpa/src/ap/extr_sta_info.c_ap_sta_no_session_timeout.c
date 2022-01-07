
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int dummy; } ;
struct hostapd_data {int dummy; } ;


 int ap_handle_session_timer ;
 int eloop_cancel_timeout (int ,struct hostapd_data*,struct sta_info*) ;

void ap_sta_no_session_timeout(struct hostapd_data *hapd, struct sta_info *sta)
{
 eloop_cancel_timeout(ap_handle_session_timer, hapd, sta);
}
