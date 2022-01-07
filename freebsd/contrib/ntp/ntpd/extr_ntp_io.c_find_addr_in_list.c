
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct interface {int dummy; } ;
typedef int sockaddr_u ;
struct TYPE_3__ {struct interface* ep; int addr; struct TYPE_3__* link; } ;
typedef TYPE_1__ remaddr_t ;


 int DPRINTF (int,char*) ;
 scalar_t__ SOCK_EQ (int *,int *) ;
 TYPE_1__* remoteaddr_list ;
 int stoa (int *) ;

__attribute__((used)) static struct interface *
find_addr_in_list(
 sockaddr_u *addr
 )
{
 remaddr_t *entry;

 DPRINTF(4, ("Searching for addr %s in list of addresses - ",
      stoa(addr)));

 for (entry = remoteaddr_list;
      entry != ((void*)0);
      entry = entry->link)
  if (SOCK_EQ(&entry->addr, addr)) {
   DPRINTF(4, ("FOUND\n"));
   return entry->ep;
  }

 DPRINTF(4, ("NOT FOUND\n"));
 return ((void*)0);
}
