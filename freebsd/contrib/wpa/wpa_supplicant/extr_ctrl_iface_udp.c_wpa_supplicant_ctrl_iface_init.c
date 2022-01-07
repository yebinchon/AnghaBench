
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wpa_supplicant {TYPE_2__* conf; } ;
struct sockaddr_in6 {int dummy; } ;
struct TYPE_3__ {int s_addr; } ;
struct sockaddr_in {void* sin_port; void* sin6_port; TYPE_1__ sin_addr; int sin_family; int sin6_addr; int sin6_family; } ;
struct sockaddr {int dummy; } ;
struct ctrl_iface_priv {int sock; int cookie; struct wpa_supplicant* wpa_s; } ;
typedef int port_str ;
typedef int addr ;
struct TYPE_4__ {struct ctrl_iface_priv* ctrl_interface; } ;


 int AF_INET ;
 int AF_INET6 ;
 int COOKIE_LEN ;
 int INADDR_ANY ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int PF_INET ;
 int PF_INET6 ;
 int SOCK_DGRAM ;
 int WPA_CTRL_IFACE_PORT ;
 int WPA_CTRL_IFACE_PORT_LIMIT ;
 int atoi (char*) ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int close (int) ;
 int eloop_register_read_sock (int,int ,struct wpa_supplicant*,struct ctrl_iface_priv*) ;
 int errno ;
 int htonl (int) ;
 void* htons (int) ;
 int in6addr_any ;
 int inet_pton (int ,char*,int *) ;
 int os_free (struct ctrl_iface_priv*) ;
 int os_get_random (int ,int ) ;
 int os_memset (struct sockaddr_in*,int ,int) ;
 int os_snprintf (char*,int,char*,int) ;
 struct ctrl_iface_priv* os_strdup (char*) ;
 char* os_strstr (struct ctrl_iface_priv*,char*) ;
 struct ctrl_iface_priv* os_zalloc (int) ;
 int socket (int,int ,int ) ;
 struct ctrl_iface_priv* strerror (int ) ;
 int wpa_msg (struct wpa_supplicant*,int ,char*,...) ;
 int wpa_msg_register_cb (int ) ;
 int wpa_printf (int ,char*,struct ctrl_iface_priv*) ;
 int wpa_supplicant_ctrl_iface_msg_cb ;
 int wpa_supplicant_ctrl_iface_receive ;

struct ctrl_iface_priv *
wpa_supplicant_ctrl_iface_init(struct wpa_supplicant *wpa_s)
{
 struct ctrl_iface_priv *priv;
 char port_str[40];
 int port = WPA_CTRL_IFACE_PORT;
 char *pos;




 struct sockaddr_in addr;
 int domain = PF_INET;


 priv = os_zalloc(sizeof(*priv));
 if (priv == ((void*)0))
  return ((void*)0);
 priv->wpa_s = wpa_s;
 priv->sock = -1;
 os_get_random(priv->cookie, COOKIE_LEN);

 if (wpa_s->conf->ctrl_interface == ((void*)0))
  return priv;

 pos = os_strstr(wpa_s->conf->ctrl_interface, "udp:");
 if (pos) {
  pos += 4;
  port = atoi(pos);
  if (port <= 0) {
   wpa_printf(MSG_ERROR, "Invalid ctrl_iface UDP port: %s",
       wpa_s->conf->ctrl_interface);
   goto fail;
  }
 }

 priv->sock = socket(domain, SOCK_DGRAM, 0);
 if (priv->sock < 0) {
  wpa_printf(MSG_ERROR, "socket(PF_INET): %s", strerror(errno));
  goto fail;
 }

 os_memset(&addr, 0, sizeof(addr));
 addr.sin_family = AF_INET;



 addr.sin_addr.s_addr = htonl((127 << 24) | 1);


try_again:



 addr.sin_port = htons(port);

 if (bind(priv->sock, (struct sockaddr *) &addr, sizeof(addr)) < 0) {
  port--;
  if ((WPA_CTRL_IFACE_PORT - port) < WPA_CTRL_IFACE_PORT_LIMIT)
   goto try_again;
  wpa_printf(MSG_ERROR, "bind(AF_INET): %s", strerror(errno));
  goto fail;
 }


 os_snprintf(port_str, sizeof(port_str), "udp:%d", port);
 os_free(wpa_s->conf->ctrl_interface);
 wpa_s->conf->ctrl_interface = os_strdup(port_str);
 if (!wpa_s->conf->ctrl_interface) {
  wpa_msg(wpa_s, MSG_ERROR, "Failed to malloc ctrl_interface");
  goto fail;
 }





 eloop_register_read_sock(priv->sock, wpa_supplicant_ctrl_iface_receive,
     wpa_s, priv);
 wpa_msg_register_cb(wpa_supplicant_ctrl_iface_msg_cb);

 return priv;

fail:
 if (priv->sock >= 0)
  close(priv->sock);
 os_free(priv);
 return ((void*)0);
}
