
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pollfd {int ident; int fd; scalar_t__ revents; int events; int flags; int filter; } ;
struct kevent {int ident; int fd; scalar_t__ revents; int events; int flags; int filter; } ;
struct epoll_event {struct pollfd data; int events; } ;
typedef int pfd ;
typedef int isc_result_t ;
struct TYPE_5__ {int lock; int write_fds; int read_fds; int * fdlock; TYPE_1__* fdpollinfo; int devpoll_fd; int epoll_fd; int kqueue_fd; } ;
typedef TYPE_2__ isc__socketmgr_t ;
typedef int evchange ;
struct TYPE_4__ {int want_read; int want_write; } ;


 scalar_t__ EEXIST ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLL_CTL_ADD ;
 int EVFILT_READ ;
 int EVFILT_WRITE ;
 int EV_ADD ;
 int FDLOCK_ID (int) ;
 int FD_SET (int,int ) ;
 int ISC_R_SUCCESS ;
 int LOCK (int *) ;
 int POLLIN ;
 int POLLOUT ;
 int SELECT_POKE_READ ;
 int SELECT_POKE_WRITE ;
 int UNLOCK (int *) ;
 int epoll_ctl (int ,int ,int,struct epoll_event*) ;
 scalar_t__ errno ;
 int isc__errno2result (scalar_t__) ;
 scalar_t__ kevent (int ,struct pollfd*,int,int *,int ,int *) ;
 int memset (struct pollfd*,int ,int) ;
 int write (int ,struct pollfd*,int) ;

__attribute__((used)) static inline isc_result_t
watch_fd(isc__socketmgr_t *manager, int fd, int msg) {
 isc_result_t result = ISC_R_SUCCESS;
}
