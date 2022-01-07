
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int dummy; } ;
struct TYPE_2__ {int sin_port; int sin_addr; int sin6_port; int sin6_addr; } ;
struct wpa_ctrl_dst {int debug_level; int errors; int addrlen; TYPE_1__ addr; struct wpa_ctrl_dst* next; } ;
struct sockaddr {int dummy; } ;
typedef int levelstr ;


 int AF_INET6 ;
 int INET6_ADDRSTRLEN ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int errno ;
 int inet_ntoa (int ) ;
 int inet_ntop (int ,int *,char*,int) ;
 int ntohs (int ) ;
 int os_free (char*) ;
 char* os_malloc (int) ;
 int os_memcpy (char*,char const*,size_t) ;
 int os_snprintf (char*,int,char*,...) ;
 int os_strlen (char*) ;
 scalar_t__ sendto (int,char*,int,int ,struct sockaddr*,int) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,int ,...) ;
 int wpa_supplicant_ctrl_iface_detach (struct wpa_ctrl_dst**,TYPE_1__*,int ) ;

__attribute__((used)) static void wpa_supplicant_ctrl_iface_send(struct wpa_supplicant *wpa_s,
        const char *ifname, int sock,
        struct wpa_ctrl_dst **head,
        int level, const char *buf,
        size_t len)
{
 struct wpa_ctrl_dst *dst, *next;
 char levelstr[64];
 int idx;
 char *sbuf;
 int llen;




 dst = *head;
 if (sock < 0 || dst == ((void*)0))
  return;

 if (ifname)
  os_snprintf(levelstr, sizeof(levelstr), "IFACE=%s <%d>",
       ifname, level);
 else
  os_snprintf(levelstr, sizeof(levelstr), "<%d>", level);

 llen = os_strlen(levelstr);
 sbuf = os_malloc(llen + len);
 if (sbuf == ((void*)0))
  return;

 os_memcpy(sbuf, levelstr, llen);
 os_memcpy(sbuf + llen, buf, len);

 idx = 0;
 while (dst) {
  next = dst->next;
  if (level >= dst->debug_level) {






   wpa_printf(MSG_DEBUG, "CTRL_IFACE monitor send %s:%d",
       inet_ntoa(dst->addr.sin_addr),
       ntohs(dst->addr.sin_port));

   if (sendto(sock, sbuf, llen + len, 0,
       (struct sockaddr *) &dst->addr,
       sizeof(dst->addr)) < 0) {
    wpa_printf(MSG_ERROR,
        "sendto(CTRL_IFACE monitor): %s",
        strerror(errno));
    dst->errors++;
    if (dst->errors > 10) {
     wpa_supplicant_ctrl_iface_detach(
      head, &dst->addr,
      dst->addrlen);
    }
   } else
    dst->errors = 0;
  }
  idx++;
  dst = next;
 }
 os_free(sbuf);
}
