
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ctrl_dst {struct wpa_ctrl_dst* next; int debug_level; int addrlen; int addr; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int sin_port; int sin_addr; int sin6_port; int sin6_addr; } ;
typedef int socklen_t ;


 int AF_INET6 ;
 int INET6_ADDRSTRLEN ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int inet_ntoa (int ) ;
 int inet_ntop (int ,int *,char*,int) ;
 int ntohs (int ) ;
 int os_memcpy (int *,struct sockaddr_in*,int) ;
 struct wpa_ctrl_dst* os_zalloc (int) ;
 int wpa_printf (int ,char*,int ,int ) ;

__attribute__((used)) static int wpa_supplicant_ctrl_iface_attach(struct wpa_ctrl_dst **head,



         struct sockaddr_in *from,

         socklen_t fromlen)
{
 struct wpa_ctrl_dst *dst;




 dst = os_zalloc(sizeof(*dst));
 if (dst == ((void*)0))
  return -1;
 os_memcpy(&dst->addr, from, sizeof(*from));
 dst->addrlen = fromlen;
 dst->debug_level = MSG_INFO;
 dst->next = *head;
 *head = dst;





 wpa_printf(MSG_DEBUG, "CTRL_IFACE monitor attached %s:%d",
     inet_ntoa(from->sin_addr), ntohs(from->sin_port));

 return 0;
}
