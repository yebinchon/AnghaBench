
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int revents; } ;


 int POLLERR ;
 int POLLHUP ;
 int poll (struct pollfd*,int,int) ;
 int rs_poll (struct pollfd*,int,int) ;

int do_poll(struct pollfd *fds, int timeout)
{
 int ret;

 do {

  ret = rs_poll(fds, 1, timeout);



 } while (!ret);

 return ret == 1 ? (fds->revents & (POLLERR | POLLHUP)) : ret;
}
