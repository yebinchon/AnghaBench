
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct roff_node {TYPE_1__* args; } ;
struct roff_man {int dummy; } ;
struct TYPE_2__ {int * argv; scalar_t__ argc; } ;


 int assert (scalar_t__) ;
 int check_argv (struct roff_man*,struct roff_node*,int *) ;

__attribute__((used)) static void
check_args(struct roff_man *mdoc, struct roff_node *n)
{
 int i;

 if (((void*)0) == n->args)
  return;

 assert(n->args->argc);
 for (i = 0; i < (int)n->args->argc; i++)
  check_argv(mdoc, n, &n->args->argv[i]);
}
