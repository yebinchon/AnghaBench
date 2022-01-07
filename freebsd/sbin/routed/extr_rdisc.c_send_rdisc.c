
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ad_u {int dummy; } ad_u ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; int imr_ifindex; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct ip_mreqn {int sin_len; TYPE_1__ sin_addr; int imr_ifindex; int sin_family; } ;
struct interface {int int_if_flags; int int_state; char* int_name; int int_addr; int int_index; int int_brdaddr; int int_dstaddr; } ;
typedef int rsin ;
typedef int naddr ;
typedef int mreqn ;


 int AF_INET ;
 int IFF_POINTOPOINT ;
 int IPPROTO_IP ;
 int IP_MULTICAST_IF ;
 int IS_BROKE ;
 int IS_DUP ;
 int LOGERR (char*) ;
 int MSG_DONTROUTE ;
 int errno ;
 int get_rdisc_sock () ;
 int if_sick (struct interface*) ;
 int inet_ntoa (TYPE_1__) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int msglog (char*,char*,char*,int ,int ) ;
 scalar_t__ rdisc_sock ;
 struct interface* rdisc_sock_mcast ;
 scalar_t__ sendto (scalar_t__,union ad_u*,int,int,struct sockaddr*,int) ;
 int setsockopt (scalar_t__,int ,int ,struct sockaddr_in*,int) ;
 int strerror (int ) ;
 int trace_act (char*,char*) ;
 int trace_rdisc (char const*,int ,int ,struct interface*,union ad_u*,int) ;

__attribute__((used)) static void
send_rdisc(union ad_u *p,
    int p_size,
    struct interface *ifp,
    naddr dst,
    int type)
{
 struct sockaddr_in rsin;
 int flags;
 const char *msg;


 memset(&rsin, 0, sizeof(rsin));
 rsin.sin_addr.s_addr = dst;
 rsin.sin_family = AF_INET;



 flags = MSG_DONTROUTE;

 switch (type) {
 case 0:
 default:
  msg = "Send";
  break;

 case 1:
  if (ifp->int_if_flags & IFF_POINTOPOINT) {
   msg = "Send pt-to-pt";
   rsin.sin_addr.s_addr = ifp->int_dstaddr;
  } else {
   msg = "Send broadcast";
   rsin.sin_addr.s_addr = ifp->int_brdaddr;
  }
  break;

 case 2:
  msg = "Send multicast";
  if (ifp->int_state & IS_DUP) {
   trace_act("abort multicast output via %s"
      " with duplicate address",
      ifp->int_name);
   return;
  }
  if (rdisc_sock_mcast != ifp) {

   struct ip_mreqn mreqn;

   memset(&mreqn, 0, sizeof(struct ip_mreqn));
   mreqn.imr_ifindex = ifp->int_index;
   if (0 > setsockopt(rdisc_sock,
        IPPROTO_IP, IP_MULTICAST_IF,
        &mreqn,
        sizeof(mreqn))) {
    LOGERR("setsockopt(rdisc_sock,"
           "IP_MULTICAST_IF)");
    rdisc_sock_mcast = ((void*)0);
    return;
   }
   rdisc_sock_mcast = ifp;
  }
  flags = 0;
  break;
 }

 if (rdisc_sock < 0)
  get_rdisc_sock();

 trace_rdisc(msg, (ifp ? ifp->int_addr : 0), rsin.sin_addr.s_addr, ifp,
      p, p_size);

 if (0 > sendto(rdisc_sock, p, p_size, flags,
         (struct sockaddr *)&rsin, sizeof(rsin))) {
  if (ifp == ((void*)0) || !(ifp->int_state & IS_BROKE))
   msglog("sendto(%s%s%s): %s",
          ifp != ((void*)0) ? ifp->int_name : "",
          ifp != ((void*)0) ? ", " : "",
          inet_ntoa(rsin.sin_addr),
          strerror(errno));
  if (ifp != ((void*)0))
   if_sick(ifp);
 }
}
