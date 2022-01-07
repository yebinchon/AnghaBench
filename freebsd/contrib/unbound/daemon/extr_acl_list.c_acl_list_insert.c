
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct acl_list {int tree; int region; } ;
struct acl_addr {int control; int node; } ;
typedef int socklen_t ;
typedef enum acl_access { ____Placeholder_acl_access } acl_access ;


 int VERB_QUERY ;
 int addr_tree_insert (int *,int *,struct sockaddr_storage*,int ,int) ;
 struct acl_addr* regional_alloc_zero (int ,int) ;
 int verbose (int ,char*) ;

__attribute__((used)) static struct acl_addr*
acl_list_insert(struct acl_list* acl, struct sockaddr_storage* addr,
 socklen_t addrlen, int net, enum acl_access control,
 int complain_duplicates)
{
 struct acl_addr* node = regional_alloc_zero(acl->region,
  sizeof(struct acl_addr));
 if(!node)
  return ((void*)0);
 node->control = control;
 if(!addr_tree_insert(&acl->tree, &node->node, addr, addrlen, net)) {
  if(complain_duplicates)
   verbose(VERB_QUERY, "duplicate acl address ignored.");
 }
 return node;
}
