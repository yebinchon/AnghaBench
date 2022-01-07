
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct roff_meta {scalar_t__ hasbody; TYPE_1__* first; } ;
struct TYPE_2__ {int child; } ;


 int print_man (int ,int ) ;
 int print_meta (struct roff_meta const*) ;
 int putchar (char) ;
 int puts (char*) ;

void
tree_man(void *arg, const struct roff_meta *man)
{
 print_meta(man);
 if (man->hasbody == 0)
  puts("body  = empty");
 putchar('\n');
 print_man(man->first->child, 0);
}
