
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __close (int) ;
 int __set_errno (int) ;
 int errno ;

__attribute__((used)) static void
nl_close(int sd)
{
  int saved_errno = errno;
  if (sd >= 0) __close(sd);
  __set_errno(saved_errno);
}
