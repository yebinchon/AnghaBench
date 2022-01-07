
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t ies_len; int * ies; int status_code; int auth_transaction; int auth_type; int bssid; int peer; } ;
union wpa_event_data {TYPE_1__ auth; } ;
typedef int u8 ;
struct privsep_event_auth {int ies_len; int status_code; int auth_transaction; int auth_type; int bssid; int peer; } ;
typedef int data ;


 int ETH_ALEN ;
 int EVENT_AUTH ;
 int os_memcpy (int ,int ,int ) ;
 int os_memset (union wpa_event_data*,int ,int) ;
 int wpa_supplicant_event (void*,int ,union wpa_event_data*) ;

__attribute__((used)) static void wpa_driver_privsep_event_auth(void *ctx, u8 *buf, size_t len)
{
 union wpa_event_data data;
 struct privsep_event_auth *auth;

 os_memset(&data, 0, sizeof(data));
 if (len < sizeof(*auth))
  return;
 auth = (struct privsep_event_auth *) buf;
 if (len < sizeof(*auth) + auth->ies_len)
  return;

 os_memcpy(data.auth.peer, auth->peer, ETH_ALEN);
 os_memcpy(data.auth.bssid, auth->bssid, ETH_ALEN);
 data.auth.auth_type = auth->auth_type;
 data.auth.auth_transaction = auth->auth_transaction;
 data.auth.status_code = auth->status_code;
 if (auth->ies_len) {
  data.auth.ies = (u8 *) (auth + 1);
  data.auth.ies_len = auth->ies_len;
 }

 wpa_supplicant_event(ctx, EVENT_AUTH, &data);
}
