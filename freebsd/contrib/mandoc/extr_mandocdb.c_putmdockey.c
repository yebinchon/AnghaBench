
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct roff_node {int flags; scalar_t__ type; int string; struct roff_node* child; struct roff_node* next; } ;
struct mpage {int dummy; } ;


 scalar_t__ ROFFT_TEXT ;
 int putkey (struct mpage const*,int ,int ) ;

__attribute__((used)) static void
putmdockey(const struct mpage *mpage,
 const struct roff_node *n, uint64_t m, int taboo)
{

 for ( ; ((void*)0) != n; n = n->next) {
  if (n->flags & taboo)
   continue;
  if (((void*)0) != n->child)
   putmdockey(mpage, n->child, m, taboo);
  if (n->type == ROFFT_TEXT)
   putkey(mpage, n->string, m);
 }
}
