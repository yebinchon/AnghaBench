
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TCP_SIDE_CLIENT ;
 int TCP_SIDE_SERVER_WORK ;
 int tcp_setup_wrap (int,int ,void**) ;

__attribute__((used)) static int
tcp_wrap(int fd, bool client, void **ctxp)
{

 return (tcp_setup_wrap(fd,
     client ? TCP_SIDE_CLIENT : TCP_SIDE_SERVER_WORK, ctxp));
}
