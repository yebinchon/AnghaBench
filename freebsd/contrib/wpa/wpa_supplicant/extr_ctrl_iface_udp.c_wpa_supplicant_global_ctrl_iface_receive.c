
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_global {int dummy; } ;
struct sockaddr_in6 {int dummy; } ;
struct TYPE_2__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct ctrl_iface_global_priv {int ctrl_dst; int cookie; } ;
typedef int socklen_t ;
typedef int from ;
typedef int buf ;


 int COOKIE_LEN ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int errno ;
 scalar_t__ hexstr2bin (char*,int *,int) ;
 scalar_t__ htonl (int) ;
 int inet_ntoa (TYPE_1__) ;
 int os_free (char*) ;
 scalar_t__ os_memcmp (int *,int ,int) ;
 scalar_t__ os_strcmp (char*,char*) ;
 scalar_t__ os_strncmp (char*,char*,int) ;
 int recvfrom (int,char*,int,int ,struct sockaddr*,int*) ;
 int sendto (int,char*,int,int ,struct sockaddr*,int) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,...) ;
 scalar_t__ wpa_supplicant_ctrl_iface_attach (int *,struct sockaddr_in*,int) ;
 scalar_t__ wpa_supplicant_ctrl_iface_detach (int *,struct sockaddr_in*,int) ;
 char* wpa_supplicant_global_ctrl_iface_process (struct wpa_global*,char*,size_t*) ;
 char* wpa_supplicant_global_get_cookie (struct ctrl_iface_global_priv*,size_t*) ;

__attribute__((used)) static void wpa_supplicant_global_ctrl_iface_receive(int sock, void *eloop_ctx,
           void *sock_ctx)
{
 struct wpa_global *global = eloop_ctx;
 struct ctrl_iface_global_priv *priv = sock_ctx;
 char buf[4096], *pos;
 int res;



 struct sockaddr_in from;

 socklen_t fromlen = sizeof(from);
 char *reply = ((void*)0);
 size_t reply_len;
 u8 cookie[COOKIE_LEN];

 res = recvfrom(sock, buf, sizeof(buf) - 1, 0,
         (struct sockaddr *) &from, &fromlen);
 if (res < 0) {
  wpa_printf(MSG_ERROR, "recvfrom(ctrl_iface): %s",
      strerror(errno));
  return;
 }



 if (from.sin_addr.s_addr != htonl((127 << 24) | 1)) {






  wpa_printf(MSG_DEBUG, "CTRL: Drop packet from unexpected "
      "source %s", inet_ntoa(from.sin_addr));
  return;
 }



 buf[res] = '\0';

 if (os_strcmp(buf, "GET_COOKIE") == 0) {
  reply = wpa_supplicant_global_get_cookie(priv, &reply_len);
  goto done;
 }

 if (os_strncmp(buf, "COOKIE=", 7) != 0) {
  wpa_printf(MSG_DEBUG, "CTLR: No cookie in the request - "
      "drop request");
  return;
 }

 if (hexstr2bin(buf + 7, cookie, COOKIE_LEN) < 0) {
  wpa_printf(MSG_DEBUG, "CTLR: Invalid cookie format in the "
      "request - drop request");
  return;
 }

 if (os_memcmp(cookie, priv->cookie, COOKIE_LEN) != 0) {
  wpa_printf(MSG_DEBUG, "CTLR: Invalid cookie in the request - "
      "drop request");
  return;
 }

 pos = buf + 7 + 2 * COOKIE_LEN;
 while (*pos == ' ')
  pos++;

 if (os_strcmp(pos, "ATTACH") == 0) {
  if (wpa_supplicant_ctrl_iface_attach(&priv->ctrl_dst,
           &from, fromlen))
   reply_len = 1;
  else
   reply_len = 2;
 } else if (os_strcmp(pos, "DETACH") == 0) {
  if (wpa_supplicant_ctrl_iface_detach(&priv->ctrl_dst,
           &from, fromlen))
   reply_len = 1;
  else
   reply_len = 2;
 } else {
  reply = wpa_supplicant_global_ctrl_iface_process(global, pos,
         &reply_len);
 }

 done:
 if (reply) {
  sendto(sock, reply, reply_len, 0, (struct sockaddr *) &from,
         fromlen);
  os_free(reply);
 } else if (reply_len == 1) {
  sendto(sock, "FAIL\n", 5, 0, (struct sockaddr *) &from,
         fromlen);
 } else if (reply_len == 2) {
  sendto(sock, "OK\n", 3, 0, (struct sockaddr *) &from,
         fromlen);
 }
}
