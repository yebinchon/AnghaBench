
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int* bssid; int ifname; int own_addr; struct eapol_test_data* drv_priv; int * driver; } ;
struct hostapd_radius_servers {int dummy; } ;
struct TYPE_6__ {int v4; } ;
struct TYPE_8__ {TYPE_2__ u; } ;
struct hostapd_radius_server {int port; int shared_secret_len; int * shared_secret; TYPE_4__ addr; } ;
struct TYPE_5__ {int s_addr; } ;
struct eapol_test_data {int * radius; TYPE_3__* radius_conf; TYPE_1__ own_ip_addr; int own_addr; } ;
struct TYPE_7__ {int num_auth_servers; int msg_dumps; int force_client_addr; TYPE_4__ client_addr; struct hostapd_radius_server* auth_servers; struct hostapd_radius_server* auth_server; } ;


 int ETH_ALEN ;
 int MSG_ERROR ;
 int RADIUS_AUTH ;
 int assert (int) ;
 int eapol_test_drv_ops ;
 scalar_t__ hostapd_parse_ip_addr (char const*,TYPE_4__*) ;
 int htonl (int) ;
 int ieee802_1x_receive_auth ;
 int os_memcpy (int ,int ,int ) ;
 scalar_t__ os_strdup (char const*) ;
 int os_strlcpy (int ,char const*,int) ;
 int os_strlen (char const*) ;
 void* os_zalloc (int) ;
 int * radius_client_init (struct wpa_supplicant*,TYPE_3__*) ;
 int radius_client_register (int *,int ,int ,struct eapol_test_data*) ;
 int sscanf (char const*,char*,int*,int*,int*,int*) ;
 int wpa_printf (int ,char*,char const*) ;

__attribute__((used)) static void wpa_init_conf(struct eapol_test_data *e,
     struct wpa_supplicant *wpa_s, const char *authsrv,
     int port, const char *secret,
     const char *cli_addr, const char *ifname)
{
 struct hostapd_radius_server *as;
 int res;

 wpa_s->driver = &eapol_test_drv_ops;
 wpa_s->drv_priv = e;
 wpa_s->bssid[5] = 1;
 os_memcpy(wpa_s->own_addr, e->own_addr, ETH_ALEN);
 e->own_ip_addr.s_addr = htonl((127 << 24) | 1);
 os_strlcpy(wpa_s->ifname, ifname, sizeof(wpa_s->ifname));

 e->radius_conf = os_zalloc(sizeof(struct hostapd_radius_servers));
 assert(e->radius_conf != ((void*)0));
 e->radius_conf->num_auth_servers = 1;
 as = os_zalloc(sizeof(struct hostapd_radius_server));
 assert(as != ((void*)0));
 if (hostapd_parse_ip_addr(authsrv, &as->addr) < 0) {
  wpa_printf(MSG_ERROR, "Invalid IP address '%s'",
      authsrv);
  assert(0);
 }

 as->port = port;
 as->shared_secret = (u8 *) os_strdup(secret);
 as->shared_secret_len = os_strlen(secret);
 e->radius_conf->auth_server = as;
 e->radius_conf->auth_servers = as;
 e->radius_conf->msg_dumps = 1;
 if (cli_addr) {
  if (hostapd_parse_ip_addr(cli_addr,
       &e->radius_conf->client_addr) == 0)
   e->radius_conf->force_client_addr = 1;
  else {
   wpa_printf(MSG_ERROR, "Invalid IP address '%s'",
       cli_addr);
   assert(0);
  }
 }

 e->radius = radius_client_init(wpa_s, e->radius_conf);
 assert(e->radius != ((void*)0));

 res = radius_client_register(e->radius, RADIUS_AUTH,
         ieee802_1x_receive_auth, e);
 assert(res == 0);
}
