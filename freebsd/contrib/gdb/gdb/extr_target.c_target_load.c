
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_load ) (char*,int) ;} ;


 TYPE_1__ current_target ;
 int dcache_invalidate (int ) ;
 int stub1 (char*,int) ;
 int target_dcache ;

void
target_load (char *arg, int from_tty)
{
  dcache_invalidate (target_dcache);
  (*current_target.to_load) (arg, from_tty);
}
