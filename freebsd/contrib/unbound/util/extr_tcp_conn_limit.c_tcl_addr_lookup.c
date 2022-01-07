
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcl_list {int tree; } ;
struct tcl_addr {int dummy; } ;
struct sockaddr_storage {int dummy; } ;
typedef int socklen_t ;


 scalar_t__ addr_tree_lookup (int *,struct sockaddr_storage*,int ) ;

struct tcl_addr*
tcl_addr_lookup(struct tcl_list* tcl, struct sockaddr_storage* addr,
        socklen_t addrlen)
{
 return (struct tcl_addr*)addr_tree_lookup(&tcl->tree,
  addr, addrlen);
}
