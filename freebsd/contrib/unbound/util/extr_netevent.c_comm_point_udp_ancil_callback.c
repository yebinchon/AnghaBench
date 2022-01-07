
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct msghdr {int msg_iovlen; char* msg_control; int msg_controllen; void* msg_namelen; scalar_t__ msg_flags; struct iovec* msg_iov; int * msg_name; } ;
struct iovec {scalar_t__ iov_len; int iov_base; } ;
struct in_pktinfo {int dummy; } ;
struct in_addr {int dummy; } ;
struct in6_pktinfo {int dummy; } ;
struct TYPE_4__ {int v4addr; int v4info; int v6info; } ;
struct comm_reply {int srctype; struct comm_point* c; void* addrlen; int addr; TYPE_2__ pktinfo; } ;
struct comm_point {scalar_t__ type; int fd; scalar_t__ buffer; int cb_arg; scalar_t__ (* callback ) (struct comm_point*,int ,int ,struct comm_reply*) ;TYPE_1__* ev; } ;
struct cmsghdr {scalar_t__ cmsg_level; scalar_t__ cmsg_type; } ;
typedef int ssize_t ;
typedef void* socklen_t ;
typedef int ancil ;
struct TYPE_3__ {int base; } ;


 int CMSG_DATA (struct cmsghdr*) ;
 struct cmsghdr* CMSG_FIRSTHDR (struct msghdr*) ;
 struct cmsghdr* CMSG_NXTHDR (struct msghdr*,struct cmsghdr*) ;
 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ IPPROTO_IP ;
 scalar_t__ IPPROTO_IPV6 ;
 scalar_t__ IPV6_PKTINFO ;
 scalar_t__ IP_PKTINFO ;
 scalar_t__ IP_RECVDSTADDR ;
 int NETEVENT_NOERROR ;
 int NUM_UDP_PER_SELECT ;
 short UB_EV_READ ;
 scalar_t__ VERB_ALGO ;
 int comm_point_send_udp_msg_if (struct comm_point*,scalar_t__,struct sockaddr*,void*,struct comm_reply*) ;
 scalar_t__ comm_udp ;
 scalar_t__ errno ;
 int fatal_exit (char*) ;
 int fptr_ok (int ) ;
 int fptr_whitelist_comm_point (scalar_t__ (*) (struct comm_point*,int ,int ,struct comm_reply*)) ;
 int log_assert (int) ;
 int log_err (char*,int ) ;
 int memmove (int *,int ,int) ;
 int p_ancil (char*,struct comm_reply*) ;
 int recvmsg (int,struct msghdr*,int ) ;
 int sldns_buffer_begin (scalar_t__) ;
 int sldns_buffer_clear (scalar_t__) ;
 int sldns_buffer_flip (scalar_t__) ;
 scalar_t__ sldns_buffer_remaining (scalar_t__) ;
 int sldns_buffer_skip (scalar_t__,int) ;
 int strerror (scalar_t__) ;
 scalar_t__ stub1 (struct comm_point*,int ,int ,struct comm_reply*) ;
 int ub_comm_base_now (int ) ;
 scalar_t__ verbosity ;

void
comm_point_udp_ancil_callback(int fd, short event, void* arg)
{
 (void)fd;
 (void)event;
 (void)arg;
 fatal_exit("recvmsg: No support for IPV6_PKTINFO; IP_PKTINFO or IP_RECVDSTADDR. "
  "Please disable interface-automatic");

}
