
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef TYPE_1__* t_Handle ;
struct TYPE_10__ {int activate; scalar_t__ iprcpt; int member_0; } ;
typedef TYPE_2__ t_FmPcdCcReassmTimeoutParams ;
struct TYPE_9__ {int h_Hc; scalar_t__ physicalMuramBase; } ;
typedef TYPE_1__ t_FmPcd ;
typedef int t_Error ;


 int ASSERT_COND (TYPE_1__*) ;
 int E_INVALID_HANDLE ;
 int E_INVALID_STATE ;
 int E_INVALID_VALUE ;
 int E_OK ;
 int FALSE ;
 int FmHcPcdCcTimeoutReassm (int ,TYPE_2__*,int*) ;
 int MAJOR ;
 char* NO_MSG ;
 int RETURN_ERROR (int ,int ,char*) ;
 scalar_t__ XX_VirtToPhys (TYPE_1__*) ;

t_Error FmPcdUnregisterReassmPort(t_Handle h_FmPcd, t_Handle h_ReasmCommonPramTbl)
{
    t_FmPcd *p_FmPcd = (t_FmPcd*)h_FmPcd;
    t_FmPcdCcReassmTimeoutParams ccReassmTimeoutParams = {0};
    uint8_t result;
    t_Error err = E_OK;

    ASSERT_COND(p_FmPcd);
    ASSERT_COND(h_ReasmCommonPramTbl);

    ccReassmTimeoutParams.iprcpt = (uint32_t)(XX_VirtToPhys(h_ReasmCommonPramTbl) - p_FmPcd->physicalMuramBase);
    ccReassmTimeoutParams.activate = FALSE;

    if ((err = FmHcPcdCcTimeoutReassm(p_FmPcd->h_Hc, &ccReassmTimeoutParams, &result)) != E_OK)
        RETURN_ERROR(MAJOR, err, NO_MSG);

    switch (result)
    {
        case (0):
            return E_OK;
        case (1):
            RETURN_ERROR(MAJOR, E_INVALID_STATE, (""));
        case (2):
            RETURN_ERROR(MAJOR, E_INVALID_STATE, (""));
        case (3):
            RETURN_ERROR(MAJOR, E_INVALID_HANDLE, ("Disable Timeout Task with invalid IPRCPT"));
        default:
            RETURN_ERROR(MAJOR, E_INVALID_VALUE, NO_MSG);
    }

    return E_OK;
}
