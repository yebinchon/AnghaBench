
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_2__ {scalar_t__ h_Mem; } ;
typedef TYPE_1__ t_FmMuram ;


 int E_INVALID_HANDLE ;
 int MM_GetFreeMemSize (scalar_t__) ;
 int SANITY_CHECK_RETURN_VALUE (scalar_t__,int ,int ) ;

uint64_t FM_MURAM_GetFreeMemSize(t_Handle h_FmMuram)
{
    t_FmMuram *p_FmMuram = ( t_FmMuram *)h_FmMuram;

    SANITY_CHECK_RETURN_VALUE(h_FmMuram, E_INVALID_HANDLE, 0);
    SANITY_CHECK_RETURN_VALUE(p_FmMuram->h_Mem, E_INVALID_HANDLE, 0);

    return MM_GetFreeMemSize(p_FmMuram->h_Mem);
}
