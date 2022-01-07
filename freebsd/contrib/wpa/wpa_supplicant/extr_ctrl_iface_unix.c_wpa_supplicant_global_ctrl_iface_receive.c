
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_global {int dummy; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct ctrl_iface_global_priv {int ctrl_dst; } ;
typedef int socklen_t ;
typedef int from ;
typedef int buf ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int errno ;
 int os_free (char*) ;
 int os_memset (char*,int ,int) ;
 scalar_t__ os_strcmp (char*,char*) ;
 int recvfrom (int,char*,int,int ,struct sockaddr*,int*) ;
 scalar_t__ sendto (int,char*,size_t,int ,struct sockaddr*,int) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,int ) ;
 scalar_t__ wpa_supplicant_ctrl_iface_attach (int *,struct sockaddr_storage*,int,int) ;
 scalar_t__ wpa_supplicant_ctrl_iface_detach (int *,struct sockaddr_storage*,int) ;
 char* wpa_supplicant_global_ctrl_iface_process (struct wpa_global*,char*,size_t*) ;
 int wpas_ctrl_sock_debug (char*,int,char*,size_t) ;

__attribute__((used)) static void wpa_supplicant_global_ctrl_iface_receive(int sock, void *eloop_ctx,
           void *sock_ctx)
{
 struct wpa_global *global = eloop_ctx;
 struct ctrl_iface_global_priv *priv = sock_ctx;
 char buf[4096];
 int res;
 struct sockaddr_storage from;
 socklen_t fromlen = sizeof(from);
 char *reply = ((void*)0), *reply_buf = ((void*)0);
 size_t reply_len;

 res = recvfrom(sock, buf, sizeof(buf) - 1, 0,
         (struct sockaddr *) &from, &fromlen);
 if (res < 0) {
  wpa_printf(MSG_ERROR, "recvfrom(ctrl_iface): %s",
      strerror(errno));
  return;
 }
 buf[res] = '\0';

 if (os_strcmp(buf, "ATTACH") == 0) {
  if (wpa_supplicant_ctrl_iface_attach(&priv->ctrl_dst, &from,
           fromlen, 1))
   reply_len = 1;
  else
   reply_len = 2;
 } else if (os_strcmp(buf, "DETACH") == 0) {
  if (wpa_supplicant_ctrl_iface_detach(&priv->ctrl_dst, &from,
           fromlen))
   reply_len = 1;
  else
   reply_len = 2;
 } else {
  reply_buf = wpa_supplicant_global_ctrl_iface_process(
   global, buf, &reply_len);
  reply = reply_buf;






  os_memset(buf, 0, res);
 }

 if (!reply && reply_len == 1) {
  reply = "FAIL\n";
  reply_len = 5;
 } else if (!reply && reply_len == 2) {
  reply = "OK\n";
  reply_len = 3;
 }

 if (reply) {
  wpas_ctrl_sock_debug("global_ctrl_sock-sendto",
         sock, reply, reply_len);
  if (sendto(sock, reply, reply_len, 0, (struct sockaddr *) &from,
      fromlen) < 0) {
   wpa_printf(MSG_DEBUG, "ctrl_iface sendto failed: %s",
    strerror(errno));
  }
 }
 os_free(reply_buf);
}
