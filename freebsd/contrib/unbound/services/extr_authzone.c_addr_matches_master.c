
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct auth_master {int host; int http; scalar_t__ allow_notify; int list; } ;
typedef scalar_t__ socklen_t ;


 int UNBOUND_DNS_PORT ;
 int addr_in_common (struct sockaddr_storage*,int,struct sockaddr_storage*,int,scalar_t__) ;
 scalar_t__ addr_in_list (int ,struct sockaddr_storage*,scalar_t__) ;
 scalar_t__ addr_is_ip6 (struct sockaddr_storage*,scalar_t__) ;
 scalar_t__ extstrtoaddr (int ,struct sockaddr_storage*,scalar_t__*) ;
 scalar_t__ netblockstrtoaddr (int ,int ,struct sockaddr_storage*,scalar_t__*,int*) ;
 scalar_t__ sockaddr_cmp_addr (struct sockaddr_storage*,scalar_t__,struct sockaddr_storage*,scalar_t__) ;
 int * strchr (int ,char) ;
 int * strrchr (int ,char) ;

__attribute__((used)) static int
addr_matches_master(struct auth_master* master, struct sockaddr_storage* addr,
 socklen_t addrlen, struct auth_master** fromhost)
{
 struct sockaddr_storage a;
 socklen_t alen = 0;
 int net = 0;
 if(addr_in_list(master->list, addr, addrlen)) {
  *fromhost = master;
  return 1;
 }



 if(extstrtoaddr(master->host, &a, &alen) &&
  sockaddr_cmp_addr(addr, addrlen, &a, alen)==0) {
  *fromhost = master;
  return 1;
 }


 if(master->allow_notify && !master->http &&
  strchr(master->host, '/') != ((void*)0) &&
  strchr(master->host, '/') == strrchr(master->host, '/') &&
  netblockstrtoaddr(master->host, UNBOUND_DNS_PORT, &a, &alen,
  &net) && alen == addrlen) {
  if(addr_in_common(addr, (addr_is_ip6(addr, addrlen)?128:32),
   &a, net, alen) >= net) {
   *fromhost = ((void*)0);

   return 1;
  }
 }
 return 0;
}
