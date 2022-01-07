
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct iter_donotq {int tree; int region; } ;
struct addr_tree_node {int dummy; } ;
typedef int socklen_t ;


 int VERB_QUERY ;
 int addr_tree_insert (int *,struct addr_tree_node*,struct sockaddr_storage*,int ,int) ;
 scalar_t__ regional_alloc (int ,int) ;
 int verbose (int ,char*) ;

__attribute__((used)) static int
donotq_insert(struct iter_donotq* dq, struct sockaddr_storage* addr,
 socklen_t addrlen, int net)
{
 struct addr_tree_node* node = (struct addr_tree_node*)regional_alloc(
  dq->region, sizeof(*node));
 if(!node)
  return 0;
 if(!addr_tree_insert(&dq->tree, node, addr, addrlen, net)) {
  verbose(VERB_QUERY, "duplicate donotquery address ignored.");
 }
 return 1;
}
