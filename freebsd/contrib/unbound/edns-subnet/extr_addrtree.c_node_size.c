
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct addrtree {int (* sizefunc ) (scalar_t__) ;} ;
struct addrnode {scalar_t__ elem; TYPE_1__* parent_edge; } ;
struct TYPE_2__ {size_t len; } ;


 int stub1 (scalar_t__) ;

__attribute__((used)) static inline size_t
node_size(const struct addrtree *tree, const struct addrnode *n)
{
 return sizeof *n + sizeof *n->parent_edge + n->parent_edge->len +
  (n->elem?tree->sizefunc(n->elem):0);
}
