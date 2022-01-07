
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {int dummy; } ;


 int accounting_report_state (struct hostapd_data*,int ) ;

void accounting_deinit(struct hostapd_data *hapd)
{
 accounting_report_state(hapd, 0);
}
