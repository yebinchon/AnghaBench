
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vhpet {TYPE_1__* timer; } ;
struct TYPE_2__ {scalar_t__ comprate; int compval; } ;


 int KASSERT (int,char*) ;

__attribute__((used)) static void
vhpet_adjust_compval(struct vhpet *vhpet, int n, uint32_t counter)
{
 uint32_t compval, comprate, compnext;

 KASSERT(vhpet->timer[n].comprate != 0, ("hpet t%d is not periodic", n));

 compval = vhpet->timer[n].compval;
 comprate = vhpet->timer[n].comprate;
 compnext = compval + ((counter - compval) / comprate + 1) * comprate;

 vhpet->timer[n].compval = compnext;
}
