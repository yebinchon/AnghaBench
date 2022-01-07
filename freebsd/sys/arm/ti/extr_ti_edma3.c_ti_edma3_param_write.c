
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ti_edma3cc_param_set {int dummy; } ;
struct TYPE_2__ {int * mem_res; } ;


 int TI_EDMA3CC_OPT (unsigned int) ;
 int bus_write_region_4 (int ,int ,int *,int) ;
 TYPE_1__* ti_edma3_sc ;

void
ti_edma3_param_write(unsigned int ch, struct ti_edma3cc_param_set *prs)
{
 bus_write_region_4(ti_edma3_sc->mem_res[0], TI_EDMA3CC_OPT(ch),
     (uint32_t *) prs, 8);
}
