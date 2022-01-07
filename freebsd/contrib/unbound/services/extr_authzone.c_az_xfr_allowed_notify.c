
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct auth_xfer {struct auth_master* allow_notify_list; } ;
struct auth_master {struct auth_master* next; } ;
typedef int socklen_t ;


 scalar_t__ addr_matches_master (struct auth_master*,struct sockaddr_storage*,int ,struct auth_master**) ;

__attribute__((used)) static int
az_xfr_allowed_notify(struct auth_xfer* xfr, struct sockaddr_storage* addr,
 socklen_t addrlen, struct auth_master** fromhost)
{
 struct auth_master* p;
 for(p=xfr->allow_notify_list; p; p=p->next) {
  if(addr_matches_master(p, addr, addrlen, fromhost)) {
   return 1;
  }
 }
 return 0;
}
