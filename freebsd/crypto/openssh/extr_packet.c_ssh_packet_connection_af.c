
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int to ;
struct ssh {TYPE_1__* state; } ;
struct sockaddr_storage {scalar_t__ ss_family; } ;
struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
struct TYPE_2__ {int connection_out; } ;


 int AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ IN6_IS_ADDR_V4MAPPED (int *) ;
 scalar_t__ getsockname (int ,struct sockaddr*,int*) ;
 int memset (struct sockaddr_storage*,int ,int) ;

int
ssh_packet_connection_af(struct ssh *ssh)
{
 struct sockaddr_storage to;
 socklen_t tolen = sizeof(to);

 memset(&to, 0, sizeof(to));
 if (getsockname(ssh->state->connection_out, (struct sockaddr *)&to,
     &tolen) < 0)
  return 0;





 return to.ss_family;
}
