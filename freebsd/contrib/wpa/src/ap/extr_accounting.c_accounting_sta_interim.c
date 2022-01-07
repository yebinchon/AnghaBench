
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {scalar_t__ acct_session_started; } ;
struct hostapd_data {int dummy; } ;


 int accounting_sta_report (struct hostapd_data*,struct sta_info*,int ) ;

__attribute__((used)) static void accounting_sta_interim(struct hostapd_data *hapd,
       struct sta_info *sta)
{
 if (sta->acct_session_started)
  accounting_sta_report(hapd, sta, 0);
}
