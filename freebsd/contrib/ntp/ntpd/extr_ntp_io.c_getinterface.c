
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32 ;
typedef int sockaddr_u ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ endpt ;


 TYPE_1__* find_addr_in_list (int *) ;

endpt *
getinterface(
 sockaddr_u * addr,
 u_int32 flags
 )
{
 endpt *iface;

 iface = find_addr_in_list(addr);

 if (iface != ((void*)0) && (iface->flags & flags))
  iface = ((void*)0);

 return iface;
}
