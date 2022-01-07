
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_3__ {scalar_t__ guestId; int exceptions; } ;
typedef TYPE_1__ t_FmPcd ;
typedef int t_Error ;
typedef int e_FmPcdExceptions ;


 int E_INVALID_HANDLE ;
 int E_INVALID_VALUE ;
 int E_NOT_SUPPORTED ;
 int E_OK ;
 int GET_FM_PCD_EXCEPTION_FLAG (int,int ) ;
 int MAJOR ;
 scalar_t__ NCSW_MASTER_ID ;
 int RETURN_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;

t_Error FM_PCD_ConfigException(t_Handle h_FmPcd, e_FmPcdExceptions exception, bool enable)
{
    t_FmPcd *p_FmPcd = (t_FmPcd*)h_FmPcd;
    uint32_t bitMask = 0;

    SANITY_CHECK_RETURN_ERROR(p_FmPcd, E_INVALID_HANDLE);

    if (p_FmPcd->guestId != NCSW_MASTER_ID)
        RETURN_ERROR(MAJOR, E_NOT_SUPPORTED, ("FM_PCD_ConfigException - guest mode!"));

    GET_FM_PCD_EXCEPTION_FLAG(bitMask, exception);
    if (bitMask)
    {
        if (enable)
            p_FmPcd->exceptions |= bitMask;
        else
            p_FmPcd->exceptions &= ~bitMask;
   }
    else
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("Undefined exception"));

    return E_OK;
}
