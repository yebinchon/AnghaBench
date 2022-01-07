
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct roff {TYPE_1__* last; } ;
struct TYPE_2__ {scalar_t__ endspan; } ;


 scalar_t__ roffnode_pop (struct roff*) ;

__attribute__((used)) static int
roffnode_cleanscope(struct roff *r)
{
 int inloop;

 inloop = 0;
 while (r->last != ((void*)0)) {
  if (--r->last->endspan != 0)
   break;
  inloop += roffnode_pop(r);
 }
 return inloop;
}
