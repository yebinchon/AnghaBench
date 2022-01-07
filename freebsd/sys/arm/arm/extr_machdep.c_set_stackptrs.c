
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ pv_va; } ;
struct TYPE_5__ {scalar_t__ pv_va; } ;
struct TYPE_4__ {scalar_t__ pv_va; } ;


 int ABT_STACK_SIZE ;
 int IRQ_STACK_SIZE ;
 int PAGE_SIZE ;
 int PSR_ABT32_MODE ;
 int PSR_IRQ32_MODE ;
 int PSR_UND32_MODE ;
 int UND_STACK_SIZE ;
 TYPE_3__ abtstack ;
 TYPE_2__ irqstack ;
 int set_stackptr (int ,scalar_t__) ;
 TYPE_1__ undstack ;

void
set_stackptrs(int cpu)
{

 set_stackptr(PSR_IRQ32_MODE,
     irqstack.pv_va + ((IRQ_STACK_SIZE * PAGE_SIZE) * (cpu + 1)));
 set_stackptr(PSR_ABT32_MODE,
     abtstack.pv_va + ((ABT_STACK_SIZE * PAGE_SIZE) * (cpu + 1)));
 set_stackptr(PSR_UND32_MODE,
     undstack.pv_va + ((UND_STACK_SIZE * PAGE_SIZE) * (cpu + 1)));
}
