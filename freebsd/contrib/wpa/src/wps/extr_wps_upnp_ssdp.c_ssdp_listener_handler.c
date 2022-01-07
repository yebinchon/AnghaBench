
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upnp_wps_device_sm {int ssdp_sd; } ;
struct sockaddr_in {int sin_port; int sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int buf ;
typedef int addr ;


 int MSG_MSGDUMP ;
 int MULTICAST_MAX_READ ;
 int inet_ntoa (int ) ;
 int isgraph (char) ;
 int ntohs (int ) ;
 char* os_strchr (char*,char) ;
 int os_strlen (char*) ;
 scalar_t__ os_strncasecmp (char*,char*,int ) ;
 int recvfrom (int ,char*,int,int ,struct sockaddr*,int*) ;
 int ssdp_parse_msearch (struct upnp_wps_device_sm*,struct sockaddr_in*,char*) ;
 scalar_t__ str_starts (char*,char*) ;
 size_t strlen (char*) ;
 int wpa_printf (int ,char*,int ,int ,char*) ;

__attribute__((used)) static void ssdp_listener_handler(int sd, void *eloop_ctx, void *sock_ctx)
{
 struct upnp_wps_device_sm *sm = sock_ctx;
 struct sockaddr_in addr;
 socklen_t addr_len;
 int nread;
 char buf[MULTICAST_MAX_READ], *pos;

 addr_len = sizeof(addr);
 nread = recvfrom(sm->ssdp_sd, buf, sizeof(buf) - 1, 0,
    (struct sockaddr *) &addr, &addr_len);
 if (nread <= 0)
  return;
 buf[nread] = '\0';

 if (str_starts(buf, "NOTIFY ")) {




  return;
 }

 pos = os_strchr(buf, '\n');
 if (pos)
  *pos = '\0';
 wpa_printf(MSG_MSGDUMP, "WPS UPnP: Received SSDP packet from %s:%d: "
     "%s", inet_ntoa(addr.sin_addr), ntohs(addr.sin_port), buf);
 if (pos)
  *pos = '\n';


 if (os_strncasecmp(buf, "M-SEARCH", os_strlen("M-SEARCH")) == 0 &&
     !isgraph(buf[strlen("M-SEARCH")])) {
  ssdp_parse_msearch(sm, &addr, buf);
  return;
 }


}
