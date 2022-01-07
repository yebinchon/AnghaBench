
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kevent {int dummy; } ;


 int EVFILT_VNODE ;
 int EV_ADD ;
 int EV_CLEAR ;
 int EV_ENABLE ;
 int EV_SET (struct kevent*,int,int ,int,int ,int ,int ) ;
 int LOG_WARNING ;
 int NOTE_WRITE ;
 int PJDLOG_ASSERT (int) ;
 int close (int) ;
 int errno ;
 int kevent (int,struct kevent*,int,int *,int ,int *) ;
 int kqueue () ;
 int pjdlog_errno (int ,char*) ;
 int wait_for_dir_kq ;

int
wait_for_dir_init(int fd)
{







 PJDLOG_ASSERT(fd != -1);
 return (0);
}
