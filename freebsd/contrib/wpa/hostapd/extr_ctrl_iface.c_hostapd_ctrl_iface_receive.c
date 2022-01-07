
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct hostapd_data {int dummy; } ;
typedef int socklen_t ;
typedef int from ;
typedef int buf ;


 int COOKIE_LEN ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_EXCESSIVE ;
 int cookie ;
 int errno ;
 scalar_t__ hexstr2bin (char*,unsigned char*,int) ;
 int hostapd_ctrl_iface_receive_process (struct hostapd_data*,char*,char*,int const,struct sockaddr_storage*,int) ;
 int os_free (char*) ;
 char* os_malloc (int const) ;
 scalar_t__ os_memcmp (int ,unsigned char*,int) ;
 int os_memcpy (char*,char*,int) ;
 scalar_t__ os_strcmp (char*,char*) ;
 scalar_t__ os_strncmp (char*,char*,int) ;
 int recvfrom (int,char*,int,int ,struct sockaddr*,int*) ;
 scalar_t__ sendto (int,char*,int,int ,struct sockaddr*,int) ;
 int strerror (int ) ;
 int wpa_hexdump_ascii (int,char*,char*,int) ;
 int wpa_printf (int,char*,...) ;
 int wpa_snprintf_hex (char*,int,int ,int) ;

__attribute__((used)) static void hostapd_ctrl_iface_receive(int sock, void *eloop_ctx,
           void *sock_ctx)
{
 struct hostapd_data *hapd = eloop_ctx;
 char buf[4096];
 int res;
 struct sockaddr_storage from;
 socklen_t fromlen = sizeof(from);
 char *reply, *pos = buf;
 const int reply_size = 4096;
 int reply_len;
 int level = MSG_DEBUG;




 res = recvfrom(sock, buf, sizeof(buf) - 1, 0,
         (struct sockaddr *) &from, &fromlen);
 if (res < 0) {
  wpa_printf(MSG_ERROR, "recvfrom(ctrl_iface): %s",
      strerror(errno));
  return;
 }
 buf[res] = '\0';

 reply = os_malloc(reply_size);
 if (reply == ((void*)0)) {
  if (sendto(sock, "FAIL\n", 5, 0, (struct sockaddr *) &from,
      fromlen) < 0) {
   wpa_printf(MSG_DEBUG, "CTRL: sendto failed: %s",
       strerror(errno));
  }
  return;
 }
 if (os_strcmp(pos, "PING") == 0)
  level = MSG_EXCESSIVE;
 wpa_hexdump_ascii(level, "RX ctrl_iface", pos, res);

 reply_len = hostapd_ctrl_iface_receive_process(hapd, pos,
             reply, reply_size,
             &from, fromlen);




 if (sendto(sock, reply, reply_len, 0, (struct sockaddr *) &from,
     fromlen) < 0) {
  wpa_printf(MSG_DEBUG, "CTRL: sendto failed: %s",
      strerror(errno));
 }
 os_free(reply);
}
