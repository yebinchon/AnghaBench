
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int p_BmPortalLow; TYPE_2__** depletionPoolsTable; } ;
typedef TYPE_1__ t_BmPortal ;
struct TYPE_7__ {size_t bpid; scalar_t__ h_BmPortal; } ;
typedef TYPE_2__ t_BmPool ;


 int NCSW_PLOCK (TYPE_1__*) ;
 int PUNLOCK (TYPE_1__*) ;
 int bm_isr_bscn_mask (int ,int ,int) ;

__attribute__((used)) static void depletion_link(t_BmPool *p_BmPool)
{
    t_BmPortal *p_Portal = (t_BmPortal *)p_BmPool->h_BmPortal;

    NCSW_PLOCK(p_Portal);
    p_Portal->depletionPoolsTable[p_BmPool->bpid] = p_BmPool;
    bm_isr_bscn_mask(p_Portal->p_BmPortalLow, (uint8_t)p_BmPool->bpid, 1);
    PUNLOCK(p_Portal);
}
