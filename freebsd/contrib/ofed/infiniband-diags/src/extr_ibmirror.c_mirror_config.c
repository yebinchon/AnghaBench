
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ib_portid_t ;


 int port_mirror_ports (int *,int,int) ;
 int port_mirror_route (int *,int,int) ;

int mirror_config(ib_portid_t* portid, int query, int clear)
{
 port_mirror_route(portid, query, clear);

 port_mirror_ports(portid, query, clear);

 return 0;
}
