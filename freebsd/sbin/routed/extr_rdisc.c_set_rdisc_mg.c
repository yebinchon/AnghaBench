
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; int sin_family; } ;
struct interface {int int_state; int int_if_flags; int int_index; } ;
struct group_req {int gr_group; int gr_interface; } ;
typedef int gr ;


 int AF_INET ;
 int IFF_MULTICAST ;
 int INADDR_ALLHOSTS_GROUP ;
 int INADDR_ALLROUTERS_GROUP ;
 int IPPROTO_IP ;
 int IS_ALL_HOSTS ;
 int IS_ALL_ROUTERS ;
 int IS_NO_ADV_IN ;
 int IS_NO_ADV_OUT ;
 int IS_NO_RDISC ;
 int LOGERR (char*) ;
 int MCAST_JOIN_GROUP ;
 int MCAST_LEAVE_GROUP ;
 int assert (int ) ;
 int get_rdisc_sock () ;
 void* htonl (int ) ;
 int memset (struct group_req*,int ,int) ;
 scalar_t__ rdisc_sock ;
 scalar_t__ setsockopt (scalar_t__,int ,int ,struct group_req*,int) ;
 scalar_t__ supplier ;

void
set_rdisc_mg(struct interface *ifp,
      int on)
{
 struct group_req gr;
 struct sockaddr_in *sin;

 assert(ifp != ((void*)0));

 if (rdisc_sock < 0) {



  if ((ifp->int_state & IS_NO_RDISC) == IS_NO_RDISC
      || !on)
   return;
  get_rdisc_sock();
 }

 if (!(ifp->int_if_flags & IFF_MULTICAST)) {
  ifp->int_state &= ~(IS_ALL_HOSTS | IS_ALL_ROUTERS);
  return;
 }

 memset(&gr, 0, sizeof(gr));
 gr.gr_interface = ifp->int_index;
 sin = (struct sockaddr_in *)&gr.gr_group;
 sin->sin_family = AF_INET;




 if (supplier
     || (ifp->int_state & IS_NO_ADV_IN)
     || !on) {


  if (ifp->int_state & IS_ALL_HOSTS) {
   sin->sin_addr.s_addr = htonl(INADDR_ALLHOSTS_GROUP);
   if (setsockopt(rdisc_sock, IPPROTO_IP,
           MCAST_LEAVE_GROUP,
           &gr, sizeof(gr)) < 0)
    LOGERR("MCAST_LEAVE_GROUP ALLHOSTS");
   ifp->int_state &= ~IS_ALL_HOSTS;
  }

 } else if (!(ifp->int_state & IS_ALL_HOSTS)) {


  sin->sin_addr.s_addr = htonl(INADDR_ALLHOSTS_GROUP);
  if (setsockopt(rdisc_sock, IPPROTO_IP, MCAST_JOIN_GROUP,
          &gr, sizeof(gr)) < 0) {
   LOGERR("MCAST_JOIN_GROUP ALLHOSTS");
  } else {
   ifp->int_state |= IS_ALL_HOSTS;
  }
 }

 if (!supplier
     || (ifp->int_state & IS_NO_ADV_OUT)
     || !on) {


  if (ifp->int_state & IS_ALL_ROUTERS) {
   sin->sin_addr.s_addr = htonl(INADDR_ALLROUTERS_GROUP);
   if (setsockopt(rdisc_sock, IPPROTO_IP,
           MCAST_LEAVE_GROUP,
           &gr, sizeof(gr)) < 0)
    LOGERR("MCAST_LEAVE_GROUP ALLROUTERS");
   ifp->int_state &= ~IS_ALL_ROUTERS;
  }

 } else if (!(ifp->int_state & IS_ALL_ROUTERS)) {


  sin->sin_addr.s_addr = htonl(INADDR_ALLROUTERS_GROUP);
  if (setsockopt(rdisc_sock, IPPROTO_IP, MCAST_JOIN_GROUP,
          &gr, sizeof(gr)) < 0) {
   LOGERR("MCAST_JOIN_GROUP ALLROUTERS");
  } else {
   ifp->int_state |= IS_ALL_ROUTERS;
  }
 }
}
