
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_6__ {TYPE_1__* netEnvs; } ;
typedef TYPE_2__ t_FmPcd ;
struct TYPE_5__ {size_t clsPlanGrpId; } ;


 int ASSERT_COND (TYPE_2__*) ;

void FmPcdSetClsPlanGrpId(t_FmPcd *p_FmPcd, uint8_t netEnvId, uint8_t clsPlanGrpId)
{
    ASSERT_COND(p_FmPcd);
    p_FmPcd->netEnvs[netEnvId].clsPlanGrpId = clsPlanGrpId;
}
