
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {scalar_t__ range_req_active; int range_req_token; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static void hostapd_range_rep_timeout_handler(void *eloop_data, void *user_ctx)
{
 struct hostapd_data *hapd = eloop_data;

 wpa_printf(MSG_DEBUG, "RRM: Range request (token %u) timed out",
     hapd->range_req_token);
 hapd->range_req_active = 0;
}
