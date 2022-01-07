
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wps_er {int multicast_sd; } ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int dest ;


 int AF_INET ;
 int MSG_DEBUG ;
 int UPNP_MULTICAST_ADDRESS ;
 int UPNP_MULTICAST_PORT ;
 int errno ;
 int htons (int ) ;
 int inet_addr (int ) ;
 int os_memset (struct sockaddr_in*,int ,int) ;
 scalar_t__ sendto (int ,int ,int ,int ,struct sockaddr*,int) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,int ,int ) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 int wpabuf_put_str (struct wpabuf*,char*) ;

void wps_er_send_ssdp_msearch(struct wps_er *er)
{
 struct wpabuf *msg;
 struct sockaddr_in dest;

 msg = wpabuf_alloc(500);
 if (msg == ((void*)0))
  return;

 wpabuf_put_str(msg,
         "M-SEARCH * HTTP/1.1\r\n"
         "HOST: 239.255.255.250:1900\r\n"
         "MAN: \"ssdp:discover\"\r\n"
         "MX: 3\r\n"
         "ST: urn:schemas-wifialliance-org:device:WFADevice:1"
         "\r\n"
         "\r\n");

 os_memset(&dest, 0, sizeof(dest));
 dest.sin_family = AF_INET;
 dest.sin_addr.s_addr = inet_addr(UPNP_MULTICAST_ADDRESS);
 dest.sin_port = htons(UPNP_MULTICAST_PORT);

 if (sendto(er->multicast_sd, wpabuf_head(msg), wpabuf_len(msg), 0,
     (struct sockaddr *) &dest, sizeof(dest)) < 0)
  wpa_printf(MSG_DEBUG, "WPS ER: M-SEARCH sendto failed: "
      "%d (%s)", errno, strerror(errno));

 wpabuf_free(msg);
}
