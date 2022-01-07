
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int LINUX_SOCK_CLOEXEC ;
 int LINUX_SOCK_NONBLOCK ;
 int SOCK_CLOEXEC ;
 int SOCK_NONBLOCK ;

__attribute__((used)) static int
linux_set_socket_flags(int lflags, int *flags)
{

 if (lflags & ~(LINUX_SOCK_CLOEXEC | LINUX_SOCK_NONBLOCK))
  return (EINVAL);
 if (lflags & LINUX_SOCK_NONBLOCK)
  *flags |= SOCK_NONBLOCK;
 if (lflags & LINUX_SOCK_CLOEXEC)
  *flags |= SOCK_CLOEXEC;
 return (0);
}
