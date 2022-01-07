
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int32 ;
typedef int sockaddr_u ;
struct TYPE_5__ {TYPE_2__* ep; int addr; struct TYPE_5__* link; } ;
typedef TYPE_1__ remaddr_t ;
struct TYPE_6__ {int flags; } ;
typedef TYPE_2__ endpt ;


 int DPRINTF (int,char*) ;
 scalar_t__ SOCK_EQ (int *,int *) ;
 TYPE_1__* remoteaddr_list ;
 int stoa (int *) ;

__attribute__((used)) static endpt *
find_flagged_addr_in_list(
 sockaddr_u * addr,
 u_int32 flags
 )
{
 remaddr_t *entry;

 DPRINTF(4, ("Finding addr %s with flags %d in list: ",
      stoa(addr), flags));

 for (entry = remoteaddr_list;
      entry != ((void*)0);
      entry = entry->link)

  if (SOCK_EQ(&entry->addr, addr)
      && (entry->ep->flags & flags) == flags) {

   DPRINTF(4, ("FOUND\n"));
   return entry->ep;
  }

 DPRINTF(4, ("NOT FOUND\n"));
 return ((void*)0);
}
