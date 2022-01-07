
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct timeval {int tv_sec; int tv_usec; } ;
struct timespec {int tv_sec; int tv_nsec; } ;
struct dvpoll {int dp_timeout; int dp_nfds; int dp_fds; } ;
struct TYPE_6__ {int nevents; int writeset; int readset; scalar_t__ maxfd; } ;
typedef TYPE_1__ isc_socketwait_t ;
typedef int isc_socketmgr_t ;
struct TYPE_7__ {scalar_t__ maxfd; int write_fds_copy; int read_fds_copy; int fd_bufsize; int write_fds; int read_fds; int devpoll_fd; int nevents; int events; int epoll_fd; int kqueue_fd; } ;
typedef TYPE_2__ isc__socketmgr_t ;


 int DP_POLL ;
 int REQUIRE (int) ;
 int epoll_wait (int ,int ,int ,int) ;
 int ioctl (int ,int ,struct dvpoll*) ;
 int kevent (int ,int *,int ,int ,int ,struct timespec*) ;
 int memcpy (int ,int ,int ) ;
 int select (scalar_t__,int ,int ,int *,struct timeval*) ;
 TYPE_2__* socketmgr ;
 TYPE_1__ swait_private ;

int
isc__socketmgr_waitevents(isc_socketmgr_t *manager0, struct timeval *tvp,
     isc_socketwait_t **swaitp)
{
 isc__socketmgr_t *manager = (isc__socketmgr_t *)manager0;


 int n;
 REQUIRE(swaitp != ((void*)0) && *swaitp == ((void*)0));





 if (manager == ((void*)0))
  return (0);
 *swaitp = &swait_private;
 return (n);
}
