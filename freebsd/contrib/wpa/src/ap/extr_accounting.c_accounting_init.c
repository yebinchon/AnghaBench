
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hostapd_data {int radius; int acct_session_id; } ;


 int RADIUS_ACCT ;
 int accounting_interim_error_cb ;
 int accounting_receive ;
 int accounting_report_state (struct hostapd_data*,int) ;
 scalar_t__ radius_client_register (int ,int ,int ,struct hostapd_data*) ;
 int radius_client_set_interim_error_cb (int ,int ,struct hostapd_data*) ;
 scalar_t__ radius_gen_session_id (int *,int) ;

int accounting_init(struct hostapd_data *hapd)
{
 if (radius_gen_session_id((u8 *) &hapd->acct_session_id,
      sizeof(hapd->acct_session_id)) < 0)
  return -1;

 if (radius_client_register(hapd->radius, RADIUS_ACCT,
       accounting_receive, hapd))
  return -1;
 radius_client_set_interim_error_cb(hapd->radius,
        accounting_interim_error_cb, hapd);

 accounting_report_state(hapd, 1);

 return 0;
}
