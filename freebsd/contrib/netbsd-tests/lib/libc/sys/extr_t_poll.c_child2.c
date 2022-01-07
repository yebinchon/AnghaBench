
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int events; int fd; } ;


 int INFTIM ;
 int POLLHUP ;
 int POLLIN ;
 int POLLOUT ;
 int desc ;
 int poll (struct pollfd*,int,int ) ;
 int printf (char*) ;
 int sleep (int) ;

__attribute__((used)) static void
child2(void)
{
 struct pollfd pfd;

 pfd.fd = desc;
 pfd.events = POLLIN | POLLHUP | POLLOUT;

 (void)sleep(1);
 (void)poll(&pfd, 1, INFTIM);
 (void)printf("child2 exit\n");
}
