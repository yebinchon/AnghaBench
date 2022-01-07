
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
typedef int t_Error ;
struct TYPE_3__ {int exceptions; struct TYPE_3__* p_BmDriverParams; } ;
typedef TYPE_1__ t_Bm ;
typedef int e_BmExceptions ;


 int E_INVALID_HANDLE ;
 int E_INVALID_VALUE ;
 int E_OK ;
 int GET_EXCEPTION_FLAG (int,int ) ;
 int MAJOR ;
 int RETURN_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;

t_Error BM_ConfigException(t_Handle h_Bm, e_BmExceptions exception, bool enable)
{
    t_Bm *p_Bm = (t_Bm*)h_Bm;
    uint32_t bitMask = 0;

    SANITY_CHECK_RETURN_ERROR(p_Bm, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_Bm->p_BmDriverParams, E_INVALID_HANDLE);

    GET_EXCEPTION_FLAG(bitMask, exception);
    if(bitMask)
    {
        if (enable)
            p_Bm->exceptions |= bitMask;
        else
            p_Bm->exceptions &= ~bitMask;
   }
    else
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("Undefined exception"));

    return E_OK;
}
