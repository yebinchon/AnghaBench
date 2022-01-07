
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int first; } ;
struct roff_man {TYPE_1__ meta; } ;


 int man_unscope (struct roff_man*,int ) ;

void
man_endparse(struct roff_man *man)
{
 man_unscope(man, man->meta.first);
}
