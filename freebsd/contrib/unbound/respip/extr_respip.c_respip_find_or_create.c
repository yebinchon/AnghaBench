
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct respip_set {int ip_tree; int region; } ;
struct resp_addr {int node; int action; } ;
typedef int socklen_t ;


 scalar_t__ addr_tree_find (int *,struct sockaddr_storage*,int ,int) ;
 int addr_tree_insert (int *,int *,struct sockaddr_storage*,int ,int) ;
 int log_err (char*,...) ;
 int log_warn (char*,char const*) ;
 int netblockstrtoaddr (char const*,int ,struct sockaddr_storage*,int *,int*) ;
 struct resp_addr* regional_alloc_zero (int ,int) ;
 int respip_none ;

__attribute__((used)) static struct resp_addr*
respip_find_or_create(struct respip_set* set, const char* ipstr, int create)
{
 struct resp_addr* node;
 struct sockaddr_storage addr;
 int net;
 socklen_t addrlen;

 if(!netblockstrtoaddr(ipstr, 0, &addr, &addrlen, &net)) {
  log_err("cannot parse netblock: '%s'", ipstr);
  return ((void*)0);
 }
 node = (struct resp_addr*)addr_tree_find(&set->ip_tree, &addr, addrlen, net);
 if(!node && create) {
  node = regional_alloc_zero(set->region, sizeof(*node));
  if(!node) {
   log_err("out of memory");
   return ((void*)0);
  }
  node->action = respip_none;
  if(!addr_tree_insert(&set->ip_tree, &node->node, &addr,
   addrlen, net)) {


   log_warn("unexpected: duplicate address: %s", ipstr);
  }
 }
 return node;
}
