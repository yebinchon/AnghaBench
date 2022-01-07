
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int err (int ,char*) ;
 int fcntl (int,int ,int) ;

__attribute__((used)) static void
fd_nonblock(int fd)
{
 int opt;

 if ((opt = fcntl(fd, F_GETFL, ((void*)0))) == -1)
  err(EXIT_FAILURE, "fcntl()");
 if (fcntl(fd, F_SETFL, opt | O_NONBLOCK) == -1)
  err(EXIT_FAILURE, "fcntl()");
}
