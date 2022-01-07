
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; int sin_family; } ;
struct interface {int int_state; int int_if_flags; int int_index; } ;
struct group_req {int gr_group; int gr_interface; } ;
typedef int gr ;


 int AF_INET ;
 int IFF_MULTICAST ;
 int INADDR_RIP_GROUP ;
 int IPPROTO_IP ;
 int IS_ALIAS ;
 int IS_RIP_IN_OFF (int) ;
 int LOGERR (char*) ;
 int MCAST_JOIN_GROUP ;
 int htonl (int ) ;
 int memset (struct group_req*,int ,int) ;
 int rip_sock ;
 scalar_t__ setsockopt (int ,int ,int ,struct group_req*,int) ;

__attribute__((used)) static void
rip_mcast_on(struct interface *ifp)
{
 struct group_req gr;
 struct sockaddr_in *sin;

 if (!IS_RIP_IN_OFF(ifp->int_state)
     && (ifp->int_if_flags & IFF_MULTICAST)
     && !(ifp->int_state & IS_ALIAS)) {
  memset(&gr, 0, sizeof(gr));
  gr.gr_interface = ifp->int_index;
  sin = (struct sockaddr_in *)&gr.gr_group;
  sin->sin_family = AF_INET;



  sin->sin_addr.s_addr = htonl(INADDR_RIP_GROUP);
  if (setsockopt(rip_sock, IPPROTO_IP, MCAST_JOIN_GROUP,
          &gr, sizeof(gr)) < 0)
   LOGERR("setsockopt(MCAST_JOIN_GROUP RIP)");
 }
}
