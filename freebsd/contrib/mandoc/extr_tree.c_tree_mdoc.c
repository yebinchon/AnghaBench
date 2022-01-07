
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct roff_meta {TYPE_1__* first; } ;
struct TYPE_2__ {int child; } ;


 int print_mdoc (int ,int ) ;
 int print_meta (struct roff_meta const*) ;
 int putchar (char) ;

void
tree_mdoc(void *arg, const struct roff_meta *mdoc)
{
 print_meta(mdoc);
 putchar('\n');
 print_mdoc(mdoc->first->child, 0);
}
