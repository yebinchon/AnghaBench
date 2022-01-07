
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tcl_list {int tree; int region; } ;
struct tcl_addr {int node; int limit; int lock; } ;
struct sockaddr_storage {int dummy; } ;
typedef int socklen_t ;


 int VERB_QUERY ;
 int addr_tree_insert (int *,int *,struct sockaddr_storage*,int ,int) ;
 int lock_quick_init (int *) ;
 struct tcl_addr* regional_alloc_zero (int ,int) ;
 int verbose (int ,char*) ;

__attribute__((used)) static struct tcl_addr*
tcl_list_insert(struct tcl_list* tcl, struct sockaddr_storage* addr,
 socklen_t addrlen, int net, uint32_t limit,
 int complain_duplicates)
{
 struct tcl_addr* node = regional_alloc_zero(tcl->region,
  sizeof(struct tcl_addr));
 if(!node)
  return ((void*)0);
 lock_quick_init(&node->lock);
 node->limit = limit;
 if(!addr_tree_insert(&tcl->tree, &node->node, addr, addrlen, net)) {
  if(complain_duplicates)
   verbose(VERB_QUERY, "duplicate tcl address ignored.");
 }
 return node;
}
