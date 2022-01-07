
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sta_info {int acct_session_id; } ;
struct hostapd_data {int dummy; } ;


 int radius_gen_session_id (int *,int) ;

int accounting_sta_get_id(struct hostapd_data *hapd, struct sta_info *sta)
{
 return radius_gen_session_id((u8 *) &sta->acct_session_id,
         sizeof(sta->acct_session_id));
}
