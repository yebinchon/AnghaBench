
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int ic_bsh; int ic_bst; } ;


 int IRQ_CAUSE_HI ;
 int bus_space_read_4 (int ,int ,int ) ;
 TYPE_1__* mv_ic_sc ;

uint32_t
mv_ic_get_cause_hi(void)
{

 return (bus_space_read_4(mv_ic_sc->ic_bst,
     mv_ic_sc->ic_bsh, IRQ_CAUSE_HI));
}
