
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sockaddr_u ;
typedef int endpt ;


 int INT_MCASTOPEN ;
 int LOG_ERR ;
 int addr_ismulticast (int *) ;
 int delete_addr_from_list (int *) ;
 int * find_flagged_addr_in_list (int *,int ) ;
 int msyslog (int ,char*,int ) ;
 int socket_multicast_disable (int *,int *) ;
 int stoa (int *) ;

void
io_multicast_del(
 sockaddr_u * addr
 )
{
 msyslog(LOG_ERR,
  "Can not delete multicast address %s: no multicast support",
  stoa(addr));

}
