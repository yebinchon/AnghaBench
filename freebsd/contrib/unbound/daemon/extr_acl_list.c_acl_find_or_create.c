
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct acl_list {int tree; } ;
struct acl_addr {int dummy; } ;
typedef int socklen_t ;


 int UNBOUND_DNS_PORT ;
 int acl_allow ;
 scalar_t__ acl_list_insert (struct acl_list*,struct sockaddr_storage*,int ,int,int ,int) ;
 scalar_t__ addr_tree_find (int *,struct sockaddr_storage*,int ,int) ;
 int log_err (char*,...) ;
 int netblockstrtoaddr (char const*,int ,struct sockaddr_storage*,int *,int*) ;

__attribute__((used)) static struct acl_addr*
acl_find_or_create(struct acl_list* acl, const char* str)
{
 struct acl_addr* node;
 struct sockaddr_storage addr;
 int net;
 socklen_t addrlen;
 if(!netblockstrtoaddr(str, UNBOUND_DNS_PORT, &addr, &addrlen, &net)) {
  log_err("cannot parse netblock: %s", str);
  return ((void*)0);
 }

 if(!(node=(struct acl_addr*)addr_tree_find(&acl->tree, &addr,
  addrlen, net))) {


  if(!(node=(struct acl_addr*)acl_list_insert(acl, &addr,
   addrlen, net, acl_allow, 1))) {
   log_err("out of memory");
   return ((void*)0);
  }
 }
 return node;
}
