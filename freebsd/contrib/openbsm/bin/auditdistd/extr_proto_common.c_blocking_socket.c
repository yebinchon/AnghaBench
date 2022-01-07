
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_GETFL ;
 int O_NONBLOCK ;
 int PJDLOG_ASSERT (int) ;
 int fcntl (int,int ) ;

__attribute__((used)) static bool
blocking_socket(int sock)
{
 int flags;

 flags = fcntl(sock, F_GETFL);
 PJDLOG_ASSERT(flags >= 0);
 return ((flags & O_NONBLOCK) == 0);
}
