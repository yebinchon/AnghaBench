
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_2__ {scalar_t__ h_Mem; } ;
typedef TYPE_1__ t_FmMuram ;


 int E_INVALID_HANDLE ;
 uintptr_t ILLEGAL_BASE ;
 scalar_t__ MM_GetForce (scalar_t__,int ,int ,char*) ;
 int SANITY_CHECK_RETURN_VALUE (scalar_t__,int ,int *) ;
 void* UINT_TO_PTR (uintptr_t) ;

void * FM_MURAM_AllocMemForce(t_Handle h_FmMuram, uint64_t base, uint32_t size)
{
    t_FmMuram *p_FmMuram = ( t_FmMuram *)h_FmMuram;
    uintptr_t addr;

    SANITY_CHECK_RETURN_VALUE(h_FmMuram, E_INVALID_HANDLE, ((void*)0));
    SANITY_CHECK_RETURN_VALUE(p_FmMuram->h_Mem, E_INVALID_HANDLE, ((void*)0));

    addr = (uintptr_t)MM_GetForce(p_FmMuram->h_Mem, base, size, "FM MURAM");

    if (addr == ILLEGAL_BASE)
        return ((void*)0);

    return UINT_TO_PTR(addr);
}
