
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int received_sighup ;

__attribute__((used)) static void
sighup_handler(int sig)
{
 int save_errno = errno;

 received_sighup = 1;
 errno = save_errno;
}
