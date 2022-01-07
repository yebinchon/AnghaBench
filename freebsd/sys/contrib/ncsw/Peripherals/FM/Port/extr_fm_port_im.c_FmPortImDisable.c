
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {TYPE_1__* p_FmPortImPram; } ;
struct TYPE_7__ {TYPE_2__ im; } ;
typedef TYPE_3__ t_FmPort ;
typedef int t_Error ;
struct TYPE_5__ {int mode; } ;


 int E_OK ;
 int GET_UINT32 (int ) ;
 int IM_MODE_GRC_STP ;
 int WRITE_UINT32 (int ,int) ;

t_Error FmPortImDisable(t_FmPort *p_FmPort)
{
    uint32_t tmpReg = GET_UINT32(p_FmPort->im.p_FmPortImPram->mode);
    WRITE_UINT32(p_FmPort->im.p_FmPortImPram->mode, (uint32_t)(tmpReg | IM_MODE_GRC_STP));
    return E_OK;
}
