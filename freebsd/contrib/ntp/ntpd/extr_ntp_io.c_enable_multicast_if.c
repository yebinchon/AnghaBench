
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct interface {int sin; int fd; } ;
typedef int sockaddr_u ;
typedef int off6 ;
typedef int off ;
typedef int TYPEOF_IP_MULTICAST_LOOP ;


 int AF (int *) ;


 int IPPROTO_IP ;
 int IPPROTO_IPV6 ;
 int IPV6_MULTICAST_LOOP ;
 int IP_MULTICAST_LOOP ;
 int LOG_ERR ;
 int REQUIRE (int) ;
 int msyslog (int ,char*,int ,int ,int ) ;
 int setsockopt (int ,int ,int ,void*,int) ;
 int stoa (int *) ;

void
enable_multicast_if(
 struct interface * iface,
 sockaddr_u * maddr
 )
{
}
