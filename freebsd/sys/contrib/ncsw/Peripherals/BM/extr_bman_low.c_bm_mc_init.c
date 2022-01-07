
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int t_Error ;
struct TYPE_4__ {int addr_ce; } ;
struct bm_mc {int state; void* rridx; void* vbit; TYPE_1__* cr; void* rr; } ;
struct bm_portal {TYPE_2__ addr; struct bm_mc mc; } ;
struct TYPE_3__ {int __dont_write_directly__verb; } ;


 int BM_MCC_VERB_VBIT ;
 int CL_CR ;
 int CL_RR0 ;
 int mc_idle ;
 void* ptr_ADD (int ,int ) ;

t_Error bm_mc_init(struct bm_portal *portal)
{
    register struct bm_mc *mc = &portal->mc;
    mc->cr = ptr_ADD(portal->addr.addr_ce, CL_CR);
    mc->rr = ptr_ADD(portal->addr.addr_ce, CL_RR0);
    mc->rridx = (uint8_t)((mc->cr->__dont_write_directly__verb & BM_MCC_VERB_VBIT) ?
            0 : 1);
    mc->vbit = (uint8_t)(mc->rridx ? BM_MCC_VERB_VBIT : 0);



    return 0;
}
