
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_4__ {scalar_t__* p_Frm; int dataMemId; } ;
typedef TYPE_1__ t_FmHc ;
typedef int t_Error ;


 int E_INVALID_HANDLE ;
 int FillBufPool (TYPE_1__*) ;
 int HC_CMD_POOL_SIZE ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;
 int XX_FreeSmart (scalar_t__) ;

t_Error FmHcSetFramesDataMemory(t_Handle h_FmHc,
                                uint8_t memId)
{
    t_FmHc *p_FmHc = (t_FmHc*)h_FmHc;
    int i;

    SANITY_CHECK_RETURN_ERROR(p_FmHc, E_INVALID_HANDLE);

    p_FmHc->dataMemId = memId;

    for (i=0; i<HC_CMD_POOL_SIZE; i++)
        if (p_FmHc->p_Frm[i])
            XX_FreeSmart(p_FmHc->p_Frm[i]);

    return FillBufPool(p_FmHc);
}
