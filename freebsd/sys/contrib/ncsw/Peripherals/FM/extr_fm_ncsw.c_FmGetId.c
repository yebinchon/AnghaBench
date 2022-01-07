
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_5__ {TYPE_1__* p_FmStateStruct; } ;
typedef TYPE_2__ t_Fm ;
struct TYPE_4__ {int fmId; } ;


 int E_INVALID_HANDLE ;
 int SANITY_CHECK_RETURN_VALUE (TYPE_2__*,int ,int) ;

uint8_t FmGetId(t_Handle h_Fm)
{
    t_Fm *p_Fm = (t_Fm*)h_Fm;

    SANITY_CHECK_RETURN_VALUE(p_Fm, E_INVALID_HANDLE, 0xff);

    return p_Fm->p_FmStateStruct->fmId;
}
