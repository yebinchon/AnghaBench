
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct broadif {int index; } ;


 int AF_INET6 ;
 int IPPROTO_IPV6 ;
 int IPV6_MULTICAST_IF ;
 int SOL_SOCKET ;
 int SO_BROADCAST ;
 scalar_t__ _setsockopt (int,int ,int ,int*,int) ;
 int fprintf (int ,char*,int) ;
 int stderr ;

int

__rpc_broadenable(int af, int s, struct broadif *bip)
{
 int o = 1;
  if (_setsockopt(s, SOL_SOCKET, SO_BROADCAST, &o, sizeof o) < 0)
   return -1;

 return 0;
}
