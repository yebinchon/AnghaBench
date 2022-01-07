
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct interface {int flags; scalar_t__ bfd; scalar_t__ fd; int name; int ifnum; int bcast; int family; scalar_t__ ignore_packets; struct interface* elink; } ;


 int AF_INET ;
 int DPRINTF (int,char*) ;


 int INT_BCASTOPEN ;
 int INT_BROADCAST ;
 int INT_LOOPBACK ;
 int INT_WILDCARD ;
 scalar_t__ INVALID_SOCKET ;
 int ISC_FALSE ;
 int ISC_TRUE ;
 int IS_IPV4 (int *) ;
 int LOG_ERR ;
 int LOG_INFO ;
 int REQUIRE (int ) ;
 int broadcast_client_enabled ;
 struct interface* ep_list ;
 int errno ;
 int msyslog (int ,char*,...) ;
 scalar_t__ open_socket (int *,int,int ,struct interface*) ;
 int set_reuseaddr (int) ;
 int stoa (int *) ;

void
io_setbclient(void)
{
 msyslog(LOG_ERR,
  "io_setbclient: Broadcast Client disabled by build");

}
