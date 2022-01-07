
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {int tv_usec; int tv_sec; } ;
struct TYPE_3__ {int nanoseconds; int seconds; } ;
struct TYPE_4__ {struct cmsghdr* ipi6_ifindex; } ;
struct msghdr {int msg_flags; unsigned int msg_controllen; int attributes; TYPE_1__ timestamp; TYPE_2__ pktinfo; int * msg_control; } ;
struct in6_pktinfo {int ipi6_addr; } ;
struct cmsghdr {scalar_t__ cmsg_level; scalar_t__ cmsg_type; } ;
typedef struct msghdr isc_socketevent_t ;
typedef struct msghdr isc__socket_t ;


 scalar_t__ CMSG_DATA (struct cmsghdr*) ;
 struct cmsghdr* CMSG_FIRSTHDR (struct msghdr*) ;
 struct cmsghdr* CMSG_NXTHDR (struct msghdr*,struct cmsghdr*) ;
 scalar_t__ IN6_IS_ADDR_MULTICAST (int *) ;
 scalar_t__ IPPROTO_IPV6 ;
 scalar_t__ IPV6_PKTINFO ;
 int ISC_MSGSET_SOCKET ;
 int ISC_MSG_IFRECEIVED ;
 int ISC_MSG_PROCESSCMSG ;
 int ISC_SOCKEVENTATTR_CTRUNC ;
 int ISC_SOCKEVENTATTR_MULTICAST ;
 int ISC_SOCKEVENTATTR_PKTINFO ;
 int ISC_SOCKEVENTATTR_TIMESTAMP ;
 int ISC_SOCKEVENTATTR_TRUNC ;
 int MSG_CTRUNC ;
 int MSG_TRUNC ;
 scalar_t__ SCM_TIMESTAMP ;
 scalar_t__ SOL_SOCKET ;
 int TRACE ;
 int UNUSED (struct msghdr*) ;
 int isc_msgcat ;
 int memcpy (TYPE_2__*,struct in6_pktinfo*,int) ;
 int socket_log (struct msghdr*,int *,int ,int ,int ,int ,char*,struct cmsghdr*) ;

__attribute__((used)) static void
process_cmsg(isc__socket_t *sock, struct msghdr *msg, isc_socketevent_t *dev) {
 UNUSED(sock);
 UNUSED(msg);
 UNUSED(dev);
}
