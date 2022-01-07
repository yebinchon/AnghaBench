
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct interface {int fd; } ;
typedef int sockaddr_u ;


 int socket_broadcast_enable (struct interface*,int ,int *) ;

void
enable_broadcast(
 struct interface * iface,
 sockaddr_u * baddr
 )
{



}
