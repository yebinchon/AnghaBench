
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct acl_list {int tree; } ;
struct acl_addr {int dummy; } ;
typedef int socklen_t ;


 scalar_t__ addr_tree_lookup (int *,struct sockaddr_storage*,int ) ;

struct acl_addr*
acl_addr_lookup(struct acl_list* acl, struct sockaddr_storage* addr,
        socklen_t addrlen)
{
 return (struct acl_addr*)addr_tree_lookup(&acl->tree,
  addr, addrlen);
}
