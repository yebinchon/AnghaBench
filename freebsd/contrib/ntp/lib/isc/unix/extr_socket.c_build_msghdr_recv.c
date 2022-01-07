
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int sa; int sunix; int sin6; int sin; } ;
struct msghdr {int msg_namelen; unsigned int msg_iovlen; scalar_t__ msg_accrightslen; int * msg_accrights; scalar_t__ msg_controllen; int * msg_control; scalar_t__ msg_flags; struct iovec* msg_iov; int * msg_name; TYPE_1__ type; } ;
struct iovec {size_t iov_len; void* iov_base; } ;
struct TYPE_10__ {size_t length; size_t base; } ;
struct TYPE_11__ {size_t n; TYPE_2__ region; int bufferlist; struct msghdr address; } ;
typedef TYPE_3__ isc_socketevent_t ;
struct TYPE_12__ {size_t length; scalar_t__ base; } ;
typedef TYPE_4__ isc_region_t ;
typedef int isc_buffer_t ;
struct TYPE_13__ {scalar_t__ type; scalar_t__ pf; scalar_t__ recvcmsgbuflen; int * recvcmsgbuf; int overflow; struct msghdr peer_address; } ;
typedef TYPE_5__ isc__socket_t ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ AF_UNIX ;
 int INSIST (int) ;
 int ISC_BUFFER_VALID (int *) ;
 int * ISC_LIST_HEAD (int ) ;
 int * ISC_LIST_NEXT (int *,int ) ;
 unsigned int MAXSCATTERGATHER_RECV ;
 int REQUIRE (int ) ;
 scalar_t__ isc_buffer_availablelength (int *) ;
 int isc_buffer_availableregion (int *,TYPE_4__*) ;
 scalar_t__ isc_sockettype_udp ;
 int link ;
 int maxiov ;
 int memset (struct msghdr*,int ,int) ;

__attribute__((used)) static void
build_msghdr_recv(isc__socket_t *sock, isc_socketevent_t *dev,
    struct msghdr *msg, struct iovec *iov, size_t *read_countp)
{
 unsigned int iovcount;
 isc_buffer_t *buffer;
 isc_region_t available;
 size_t read_count;

 memset(msg, 0, sizeof(struct msghdr));

 if (sock->type == isc_sockettype_udp) {
  memset(&dev->address, 0, sizeof(dev->address));
  msg->msg_name = (void *)&dev->address.type.sa;
  msg->msg_namelen = sizeof(dev->address.type);





 } else {
  msg->msg_name = ((void*)0);
  msg->msg_namelen = 0;
  dev->address = sock->peer_address;
 }

 buffer = ISC_LIST_HEAD(dev->bufferlist);
 read_count = 0;




 if (buffer == ((void*)0)) {
  read_count = dev->region.length - dev->n;
  iov[0].iov_base = (void *)(dev->region.base + dev->n);
  iov[0].iov_len = read_count;
  iovcount = 1;

  goto config;
 }





 while (buffer != ((void*)0)) {
  REQUIRE(ISC_BUFFER_VALID(buffer));
  if (isc_buffer_availablelength(buffer) != 0)
   break;
  buffer = ISC_LIST_NEXT(buffer, link);
 }

 iovcount = 0;
 while (buffer != ((void*)0)) {
  INSIST(iovcount < MAXSCATTERGATHER_RECV);

  isc_buffer_availableregion(buffer, &available);

  if (available.length > 0) {
   iov[iovcount].iov_base = (void *)(available.base);
   iov[iovcount].iov_len = available.length;
   read_count += available.length;
   iovcount++;
  }
  buffer = ISC_LIST_NEXT(buffer, link);
 }

 config:
 msg->msg_iov = iov;
 msg->msg_iovlen = iovcount;
 msg->msg_accrights = ((void*)0);
 msg->msg_accrightslen = 0;


 if (read_countp != ((void*)0))
  *read_countp = read_count;
}
