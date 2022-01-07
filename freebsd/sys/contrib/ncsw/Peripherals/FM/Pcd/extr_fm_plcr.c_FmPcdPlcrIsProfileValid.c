
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint16_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_5__ {TYPE_1__* profiles; } ;
typedef TYPE_2__ t_FmPcdPlcr ;
struct TYPE_6__ {TYPE_2__* p_FmPcdPlcr; } ;
typedef TYPE_3__ t_FmPcd ;
struct TYPE_4__ {int valid; } ;


 int ASSERT_COND (int) ;
 size_t FM_PCD_PLCR_NUM_ENTRIES ;

bool FmPcdPlcrIsProfileValid(t_Handle h_FmPcd, uint16_t absoluteProfileId)
{
    t_FmPcd *p_FmPcd = (t_FmPcd*)h_FmPcd;
    t_FmPcdPlcr *p_FmPcdPlcr = p_FmPcd->p_FmPcdPlcr;

    ASSERT_COND(absoluteProfileId < FM_PCD_PLCR_NUM_ENTRIES);

    return p_FmPcdPlcr->profiles[absoluteProfileId].valid;
}
