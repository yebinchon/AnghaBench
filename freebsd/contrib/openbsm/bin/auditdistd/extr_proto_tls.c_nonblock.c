
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_TEMPFAIL ;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int fcntl (int,int ,...) ;
 int pjdlog_exit (int ,char*) ;

__attribute__((used)) static void
nonblock(int fd)
{
 int flags;

 flags = fcntl(fd, F_GETFL);
 if (flags == -1)
  pjdlog_exit(EX_TEMPFAIL, "fcntl(F_GETFL) failed");
 flags |= O_NONBLOCK;
 if (fcntl(fd, F_SETFL, flags) == -1)
  pjdlog_exit(EX_TEMPFAIL, "fcntl(F_SETFL) failed");
}
