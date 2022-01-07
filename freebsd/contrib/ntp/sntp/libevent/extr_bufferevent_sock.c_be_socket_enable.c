
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int timeout_write; int ev_write; int timeout_read; int ev_read; } ;


 short EV_READ ;
 short EV_WRITE ;
 int be_socket_add (int *,int *) ;

__attribute__((used)) static int
be_socket_enable(struct bufferevent *bufev, short event)
{
 if (event & EV_READ) {
  if (be_socket_add(&bufev->ev_read,&bufev->timeout_read) == -1)
   return -1;
 }
 if (event & EV_WRITE) {
  if (be_socket_add(&bufev->ev_write,&bufev->timeout_write) == -1)
   return -1;
 }
 return 0;
}
