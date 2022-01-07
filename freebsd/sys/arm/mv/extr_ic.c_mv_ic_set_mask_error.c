
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int ic_bsh; int ic_bst; } ;


 int IRQ_MASK_ERROR ;
 int bus_space_write_4 (int ,int ,int ,int ) ;
 TYPE_1__* mv_ic_sc ;

void
mv_ic_set_mask_error(uint32_t val)
{

 bus_space_write_4(mv_ic_sc->ic_bst, mv_ic_sc->ic_bsh,
     IRQ_MASK_ERROR, val);
}
