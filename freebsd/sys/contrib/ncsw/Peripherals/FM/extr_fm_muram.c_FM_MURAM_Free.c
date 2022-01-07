
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_2__ {scalar_t__ h_Mem; } ;
typedef TYPE_1__ t_FmMuram ;
typedef int t_Error ;


 int E_OK ;
 int MM_Free (scalar_t__) ;
 int XX_Free (scalar_t__) ;

t_Error FM_MURAM_Free(t_Handle h_FmMuram)
{
    t_FmMuram *p_FmMuram = ( t_FmMuram *)h_FmMuram;

    if (p_FmMuram->h_Mem)
        MM_Free(p_FmMuram->h_Mem);

    XX_Free(h_FmMuram);

    return E_OK;
}
