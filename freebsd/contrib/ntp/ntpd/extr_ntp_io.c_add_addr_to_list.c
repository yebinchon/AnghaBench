
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sockaddr_u ;
struct TYPE_4__ {int * ep; int addr; } ;
typedef TYPE_1__ remaddr_t ;
typedef int endpt ;


 int DPRINTF (int,char*) ;
 int LINK_SLIST (int ,TYPE_1__*,int ) ;
 TYPE_1__* emalloc (int) ;
 int * find_addr_in_list (int *) ;
 int link ;
 int remoteaddr_list ;
 int stoa (int *) ;

__attribute__((used)) static void
add_addr_to_list(
 sockaddr_u * addr,
 endpt * ep
 )
{
 remaddr_t *laddr;





  laddr = emalloc(sizeof(*laddr));
  laddr->addr = *addr;
  laddr->ep = ep;

  LINK_SLIST(remoteaddr_list, laddr, link);

  DPRINTF(4, ("Added addr %s to list of addresses\n",
       stoa(addr)));





}
