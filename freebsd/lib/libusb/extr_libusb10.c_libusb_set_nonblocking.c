
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int fcntl (int,int ,int) ;

__attribute__((used)) static void
libusb_set_nonblocking(int f)
{
 int flags;
 flags = fcntl(f, F_GETFL, ((void*)0));
 if (flags == -1)
  return;
 flags |= O_NONBLOCK;
 fcntl(f, F_SETFL, flags);
}
