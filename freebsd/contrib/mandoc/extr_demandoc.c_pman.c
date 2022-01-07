
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {int flags; scalar_t__ type; struct roff_node* child; int pos; int string; int line; struct roff_node* next; } ;


 int NODE_LINE ;
 scalar_t__ ROFFT_TEXT ;
 int pline (int ,int*,int*,int) ;
 int pstring (int ,int ,int*,int) ;

__attribute__((used)) static void
pman(const struct roff_node *p, int *line, int *col, int list)
{

 for ( ; p; p = p->next) {
  if (NODE_LINE & p->flags)
   pline(p->line, line, col, list);
  if (ROFFT_TEXT == p->type)
   pstring(p->string, p->pos, col, list);
  if (p->child)
   pman(p->child, line, col, list);
 }
}
