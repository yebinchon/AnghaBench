
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int from ;
typedef int buffer ;


 int COOKIE_LEN ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int eloop_terminate () ;
 int errno ;
 int fst_ctrl_iface_receive (char*,char*,int const) ;
 int gcookie ;
 scalar_t__ hapd_module_tests () ;
 scalar_t__ hexstr2bin (char*,unsigned char*,int) ;
 scalar_t__ hostapd_ctrl_iface_add (void*,char*) ;
 int hostapd_ctrl_iface_flush (void*) ;
 scalar_t__ hostapd_ctrl_iface_remove (void*,char*) ;
 scalar_t__ hostapd_global_ctrl_iface_attach (void*,struct sockaddr_storage*,int,char*) ;
 scalar_t__ hostapd_global_ctrl_iface_detach (void*,struct sockaddr_storage*,int) ;
 int hostapd_global_ctrl_iface_dup_network (void*,char*) ;
 int hostapd_global_ctrl_iface_fst_attach (void*,char*) ;
 int hostapd_global_ctrl_iface_fst_detach (void*,char*) ;
 int hostapd_global_ctrl_iface_ifname (void*,char*,char*,char*,int const,struct sockaddr_storage*,int) ;
 int hostapd_global_ctrl_iface_interfaces (void*,char*,char*,int) ;
 int os_free (char*) ;
 char* os_malloc (int const) ;
 scalar_t__ os_memcmp (int ,unsigned char*,int) ;
 int os_memcpy (char*,char*,int) ;
 int os_snprintf (char*,int const,char*) ;
 char* os_strchr (char*,char) ;
 scalar_t__ os_strcmp (char*,char*) ;
 scalar_t__ os_strncmp (char*,char*,int) ;
 int recvfrom (int,char*,int,int ,struct sockaddr*,int*) ;
 scalar_t__ sendto (int,char*,int,int ,struct sockaddr*,int) ;
 char* strerror (int ) ;
 scalar_t__ wpa_debug_reopen_file () ;
 int wpa_printf (int ,char*,...) ;
 int wpa_snprintf_hex (char*,int,int ,int) ;

__attribute__((used)) static void hostapd_global_ctrl_iface_receive(int sock, void *eloop_ctx,
           void *sock_ctx)
{
 void *interfaces = eloop_ctx;
 char buffer[256], *buf = buffer;
 int res;
 struct sockaddr_storage from;
 socklen_t fromlen = sizeof(from);
 char *reply;
 int reply_len;
 const int reply_size = 4096;




 res = recvfrom(sock, buffer, sizeof(buffer) - 1, 0,
         (struct sockaddr *) &from, &fromlen);
 if (res < 0) {
  wpa_printf(MSG_ERROR, "recvfrom(ctrl_iface): %s",
      strerror(errno));
  return;
 }
 buf[res] = '\0';
 wpa_printf(MSG_DEBUG, "Global ctrl_iface command: %s", buf);

 reply = os_malloc(reply_size);
 if (reply == ((void*)0)) {
  if (sendto(sock, "FAIL\n", 5, 0, (struct sockaddr *) &from,
      fromlen) < 0) {
   wpa_printf(MSG_DEBUG, "CTRL: sendto failed: %s",
       strerror(errno));
  }
  return;
 }

 os_memcpy(reply, "OK\n", 3);
 reply_len = 3;
 if (os_strncmp(buf, "IFNAME=", 7) == 0) {
  char *pos = os_strchr(buf + 7, ' ');

  if (pos) {
   *pos++ = '\0';
   reply_len = hostapd_global_ctrl_iface_ifname(
    interfaces, buf + 7, pos, reply, reply_size,
    &from, fromlen);
   goto send_reply;
  }
 }

 if (os_strcmp(buf, "PING") == 0) {
  os_memcpy(reply, "PONG\n", 5);
  reply_len = 5;
 } else if (os_strncmp(buf, "RELOG", 5) == 0) {
  if (wpa_debug_reopen_file() < 0)
   reply_len = -1;
 } else if (os_strcmp(buf, "FLUSH") == 0) {
  hostapd_ctrl_iface_flush(interfaces);
 } else if (os_strncmp(buf, "ADD ", 4) == 0) {
  if (hostapd_ctrl_iface_add(interfaces, buf + 4) < 0)
   reply_len = -1;
 } else if (os_strncmp(buf, "REMOVE ", 7) == 0) {
  if (hostapd_ctrl_iface_remove(interfaces, buf + 7) < 0)
   reply_len = -1;
 } else if (os_strcmp(buf, "ATTACH") == 0) {
  if (hostapd_global_ctrl_iface_attach(interfaces, &from,
           fromlen, ((void*)0)))
   reply_len = -1;
 } else if (os_strncmp(buf, "ATTACH ", 7) == 0) {
  if (hostapd_global_ctrl_iface_attach(interfaces, &from,
           fromlen, buf + 7))
   reply_len = -1;
 } else if (os_strcmp(buf, "DETACH") == 0) {
  if (hostapd_global_ctrl_iface_detach(interfaces, &from,
   fromlen))
   reply_len = -1;
 } else if (os_strncmp(buf, "DUP_NETWORK ", 12) == 0) {
  if (!hostapd_global_ctrl_iface_dup_network(interfaces,
          buf + 12))
   reply_len = os_snprintf(reply, reply_size, "OK\n");
  else
   reply_len = -1;
 } else if (os_strncmp(buf, "INTERFACES", 10) == 0) {
  reply_len = hostapd_global_ctrl_iface_interfaces(
   interfaces, buf + 10, reply, sizeof(buffer));
 } else if (os_strcmp(buf, "TERMINATE") == 0) {
  eloop_terminate();
 } else {
  wpa_printf(MSG_DEBUG, "Unrecognized global ctrl_iface command "
      "ignored");
  reply_len = -1;
 }

send_reply:
 if (reply_len < 0) {
  os_memcpy(reply, "FAIL\n", 5);
  reply_len = 5;
 }

 if (sendto(sock, reply, reply_len, 0, (struct sockaddr *) &from,
     fromlen) < 0) {
  wpa_printf(MSG_DEBUG, "CTRL: sendto failed: %s",
      strerror(errno));
 }
 os_free(reply);
}
