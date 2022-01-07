
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int child_terminated ;
 int errno ;
 int notify_parent () ;

__attribute__((used)) static void
sigchld_handler(int sig)
{
 int save_errno = errno;
 child_terminated = 1;
 notify_parent();
 errno = save_errno;
}
