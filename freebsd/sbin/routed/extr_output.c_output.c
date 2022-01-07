
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {scalar_t__ sin_port; int sin_len; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct rip {int dummy; } ;
struct ip_mreqn {int imr_ifindex; } ;
struct interface {int int_rip_sock; int int_if_flags; int int_state; char* int_name; int int_index; } ;
typedef int osin ;
typedef int mreqn ;
typedef enum output_type { ____Placeholder_output_type } output_type ;


 int IFF_MULTICAST ;
 int IFF_POINTOPOINT ;
 int INADDR_RIP_GROUP ;
 int IPPROTO_IP ;
 int IP_MULTICAST_IF ;
 int IS_BROKE ;
 int IS_DUP ;
 int LOGERR (char*) ;
 int MSG_DONTROUTE ;






 int RIP_PORT ;
 int abort () ;
 int assert (int ) ;
 int errno ;
 int htonl (int ) ;
 scalar_t__ htons (int ) ;
 int inet_ntoa (TYPE_1__) ;
 int memset (struct ip_mreqn*,int ,int) ;
 int msglog (char*,char const*,char*,char*,int ,int ,int ) ;
 int ntohs (scalar_t__) ;
 int rip_sock ;
 struct interface* rip_sock_mcast ;
 int sendto (int,struct rip*,int,int,struct sockaddr*,int) ;
 int setsockopt (int,int ,int ,struct ip_mreqn*,int) ;
 int strerror (int) ;
 int trace_act (char*,char*) ;
 int trace_rip (char const*,char*,struct sockaddr_in*,struct interface*,struct rip*,int) ;

int
output(enum output_type type,
       struct sockaddr_in *dst,
       struct interface *ifp,
       struct rip *buf,
       int size)
{
 struct sockaddr_in osin;
 int flags;
 const char *msg;
 int res;
 int soc;
 int serrno;

 assert(ifp != ((void*)0));
 osin = *dst;
 if (osin.sin_port == 0)
  osin.sin_port = htons(RIP_PORT);





 soc = rip_sock;
 flags = 0;

 switch (type) {
 case 129:
  msg = "Answer Query";
  if (soc < 0)
   soc = ifp->int_rip_sock;
  break;
 case 128:
  msg = "Send";
  if (soc < 0)
   soc = ifp->int_rip_sock;
  flags = MSG_DONTROUTE;
  break;
 case 131:
  if (ifp->int_if_flags & IFF_POINTOPOINT) {
   msg = "Send";
  } else {
   msg = "Send bcast";
  }
  flags = MSG_DONTROUTE;
  break;
 case 130:
  if ((ifp->int_if_flags & (IFF_POINTOPOINT|IFF_MULTICAST)) ==
      IFF_POINTOPOINT) {
   msg = "Send pt-to-pt";
  } else if (ifp->int_state & IS_DUP) {
   trace_act("abort multicast output via %s"
      " with duplicate address",
      ifp->int_name);
   return 0;
  } else {
   msg = "Send mcast";
   if (rip_sock_mcast != ifp) {
    struct ip_mreqn mreqn;

    memset(&mreqn, 0, sizeof(struct ip_mreqn));
    mreqn.imr_ifindex = ifp->int_index;
    if (0 > setsockopt(rip_sock,
         IPPROTO_IP,
         IP_MULTICAST_IF,
         &mreqn,
         sizeof(mreqn))) {
     serrno = errno;
     LOGERR("setsockopt(rip_sock, "
            "IP_MULTICAST_IF)");
     errno = serrno;
     ifp = ((void*)0);
     return -1;
    }
    rip_sock_mcast = ifp;
   }
   osin.sin_addr.s_addr = htonl(INADDR_RIP_GROUP);
  }
  break;

 case 133:
 case 132:
 default:



  return -1;
 }

 trace_rip(msg, "to", &osin, ifp, buf, size);

 res = sendto(soc, buf, size, flags,
       (struct sockaddr *)&osin, sizeof(osin));
 if (res < 0
     && (ifp == ((void*)0) || !(ifp->int_state & IS_BROKE))) {
  serrno = errno;
  msglog("%s sendto(%s%s%s.%d): %s", msg,
         ifp != ((void*)0) ? ifp->int_name : "",
         ifp != ((void*)0) ? ", " : "",
         inet_ntoa(osin.sin_addr),
         ntohs(osin.sin_port),
         strerror(errno));
  errno = serrno;
 }

 return res;
}
