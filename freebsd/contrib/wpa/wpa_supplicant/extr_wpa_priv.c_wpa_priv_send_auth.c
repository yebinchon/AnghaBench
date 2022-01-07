
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ies_len; int ies; int status_code; int auth_transaction; int auth_type; int bssid; int peer; } ;
union wpa_event_data {TYPE_1__ auth; } ;
typedef int u8 ;
struct wpa_priv_interface {int dummy; } ;
struct privsep_event_auth {int ies_len; int status_code; int auth_transaction; int auth_type; int * bssid; int * peer; } ;


 int ETH_ALEN ;
 int PRIVSEP_EVENT_AUTH ;
 int os_free (int *) ;
 int os_memcpy (int *,int ,int ) ;
 int * os_zalloc (size_t) ;
 int wpa_priv_send_event (struct wpa_priv_interface*,int ,int *,size_t) ;

__attribute__((used)) static void wpa_priv_send_auth(struct wpa_priv_interface *iface,
          union wpa_event_data *data)
{
 size_t buflen = sizeof(struct privsep_event_auth) + data->auth.ies_len;
 struct privsep_event_auth *auth;
 u8 *buf, *pos;

 buf = os_zalloc(buflen);
 if (buf == ((void*)0))
  return;

 auth = (struct privsep_event_auth *) buf;
 pos = (u8 *) (auth + 1);

 os_memcpy(auth->peer, data->auth.peer, ETH_ALEN);
 os_memcpy(auth->bssid, data->auth.bssid, ETH_ALEN);
 auth->auth_type = data->auth.auth_type;
 auth->auth_transaction = data->auth.auth_transaction;
 auth->status_code = data->auth.status_code;
 if (data->auth.ies) {
  os_memcpy(pos, data->auth.ies, data->auth.ies_len);
  auth->ies_len = data->auth.ies_len;
 }

 wpa_priv_send_event(iface, PRIVSEP_EVENT_AUTH, buf, buflen);

 os_free(buf);
}
