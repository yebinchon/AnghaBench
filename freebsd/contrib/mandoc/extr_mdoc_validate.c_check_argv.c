
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {int dummy; } ;
struct roff_man {int dummy; } ;
struct mdoc_argv {int * value; int pos; int line; scalar_t__ sz; } ;


 int check_text (struct roff_man*,int ,int ,int ) ;

__attribute__((used)) static void
check_argv(struct roff_man *mdoc, struct roff_node *n, struct mdoc_argv *v)
{
 int i;

 for (i = 0; i < (int)v->sz; i++)
  check_text(mdoc, v->line, v->pos, v->value[i]);
}
