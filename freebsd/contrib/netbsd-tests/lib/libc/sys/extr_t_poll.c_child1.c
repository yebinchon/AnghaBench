
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int events; int fd; } ;


 int POLLHUP ;
 int POLLIN ;
 int POLLOUT ;
 int desc ;
 int poll (struct pollfd*,int,int) ;
 int printf (char*) ;

__attribute__((used)) static void
child1(void)
{
 struct pollfd pfd;

 pfd.fd = desc;
 pfd.events = POLLIN | POLLHUP | POLLOUT;

 (void)poll(&pfd, 1, 2000);
 (void)printf("child1 exit\n");
}
