
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_2__ {scalar_t__ h_Mem; } ;
typedef TYPE_1__ t_FmMuram ;
typedef int t_Error ;


 int E_INVALID_ADDRESS ;
 int E_INVALID_HANDLE ;
 int E_OK ;
 int MINOR ;
 scalar_t__ MM_Put (scalar_t__,int ) ;
 int PTR_TO_UINT (void*) ;
 int RETURN_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_ERROR (scalar_t__,int ) ;

t_Error FM_MURAM_FreeMem(t_Handle h_FmMuram, void *ptr)
{
    t_FmMuram *p_FmMuram = ( t_FmMuram *)h_FmMuram;

    SANITY_CHECK_RETURN_ERROR(h_FmMuram, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_FmMuram->h_Mem, E_INVALID_HANDLE);

    if (MM_Put(p_FmMuram->h_Mem, PTR_TO_UINT(ptr)) == 0)
        RETURN_ERROR(MINOR, E_INVALID_ADDRESS, ("memory pointer!!!"));

    return E_OK;
}
