
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct radius_msg {int dummy; } ;
struct hostapd_data {int * radius; scalar_t__ acct_session_id; TYPE_2__* conf; } ;
typedef int buf ;
struct TYPE_4__ {TYPE_1__* radius; } ;
struct TYPE_3__ {int acct_server; } ;


 int MSG_ERROR ;
 int RADIUS_ACCT ;
 int RADIUS_ACCT_STATUS_TYPE_ACCOUNTING_OFF ;
 int RADIUS_ACCT_STATUS_TYPE_ACCOUNTING_ON ;
 int RADIUS_ATTR_ACCT_SESSION_ID ;
 struct radius_msg* accounting_msg (struct hostapd_data*,int *,int ) ;
 int os_snprintf (char*,int,char*,unsigned long long) ;
 int os_strlen (char*) ;
 scalar_t__ radius_client_send (int *,struct radius_msg*,int ,int *) ;
 int radius_msg_add_attr (struct radius_msg*,int ,int *,int ) ;
 int radius_msg_free (struct radius_msg*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void accounting_report_state(struct hostapd_data *hapd, int on)
{
 struct radius_msg *msg;

 if (!hapd->conf->radius->acct_server || hapd->radius == ((void*)0))
  return;



 msg = accounting_msg(hapd, ((void*)0),
        on ? RADIUS_ACCT_STATUS_TYPE_ACCOUNTING_ON :
        RADIUS_ACCT_STATUS_TYPE_ACCOUNTING_OFF);
 if (!msg)
  return;

 if (hapd->acct_session_id) {
  char buf[20];

  os_snprintf(buf, sizeof(buf), "%016llX",
       (unsigned long long) hapd->acct_session_id);
  if (!radius_msg_add_attr(msg, RADIUS_ATTR_ACCT_SESSION_ID,
      (u8 *) buf, os_strlen(buf)))
   wpa_printf(MSG_ERROR, "Could not add Acct-Session-Id");
 }

 if (radius_client_send(hapd->radius, msg, RADIUS_ACCT, ((void*)0)) < 0)
  radius_msg_free(msg);
}
