
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fd_set ;


 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int PJDLOG_ASSERT (int) ;
 int select (int,int *,int *,int *,int *) ;

__attribute__((used)) static void
fd_wait(int fd, bool doread)
{
 fd_set fds;

 PJDLOG_ASSERT(fd >= 0);

 FD_ZERO(&fds);
 FD_SET(fd, &fds);
 (void)select(fd + 1, doread ? &fds : ((void*)0), doread ? ((void*)0) : &fds,
     ((void*)0), ((void*)0));
}
