
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_INET ;
 int rresvport_af (int*,int ) ;

int
rresvport(int *port)
{
 return rresvport_af(port, AF_INET);
}
