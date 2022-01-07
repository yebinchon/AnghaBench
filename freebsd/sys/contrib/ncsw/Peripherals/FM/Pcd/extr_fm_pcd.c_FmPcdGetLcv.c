
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef size_t uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_4__ {TYPE_1__* netEnvs; } ;
typedef TYPE_2__ t_FmPcd ;
struct TYPE_3__ {size_t* lcvs; } ;


 int ASSERT_COND (scalar_t__) ;

uint32_t FmPcdGetLcv(t_Handle h_FmPcd, uint32_t netEnvId, uint8_t hdrNum)
{
    t_FmPcd *p_FmPcd = (t_FmPcd*)h_FmPcd;

    ASSERT_COND(h_FmPcd);
    return p_FmPcd->netEnvs[netEnvId].lcvs[hdrNum];
}
