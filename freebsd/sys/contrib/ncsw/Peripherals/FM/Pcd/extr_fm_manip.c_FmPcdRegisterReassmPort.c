
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef TYPE_1__* t_Handle ;
struct TYPE_10__ {int tsbs; int activate; scalar_t__ iprcpt; int member_0; } ;
typedef TYPE_2__ t_FmPcdCcReassmTimeoutParams ;
struct TYPE_9__ {int h_Hc; scalar_t__ physicalMuramBase; int h_Fm; } ;
typedef TYPE_1__ t_FmPcd ;
typedef int t_Error ;


 int ASSERT_COND (TYPE_1__*) ;
 int E_FULL ;
 int E_INVALID_SELECTION ;
 int E_INVALID_VALUE ;
 int E_NOT_AVAILABLE ;
 int E_NO_MEMORY ;
 int E_OK ;
 int FM_PCD_MANIP_REASM_TIMEOUT_THREAD_THRESH ;
 scalar_t__ FmGetTimeStampScale (int ) ;
 int FmHcPcdCcTimeoutReassm (int ,TYPE_2__*,int*) ;
 int LOG2 (int ,scalar_t__) ;
 int MAJOR ;
 char* NO_MSG ;
 int RETURN_ERROR (int ,int ,char*) ;
 int TRUE ;
 scalar_t__ XX_VirtToPhys (TYPE_1__*) ;

t_Error FmPcdRegisterReassmPort(t_Handle h_FmPcd, t_Handle h_ReasmCommonPramTbl)
{
    t_FmPcd *p_FmPcd = (t_FmPcd*)h_FmPcd;
    t_FmPcdCcReassmTimeoutParams ccReassmTimeoutParams = { 0 };
    t_Error err = E_OK;
    uint8_t result;
    uint32_t bitFor1Micro, tsbs, log2num;

    ASSERT_COND(p_FmPcd);
    ASSERT_COND(h_ReasmCommonPramTbl);

    bitFor1Micro = FmGetTimeStampScale(p_FmPcd->h_Fm);
    if (bitFor1Micro == 0)
        RETURN_ERROR(MAJOR, E_NOT_AVAILABLE, ("Timestamp scale"));

    bitFor1Micro = 32 - bitFor1Micro;
    LOG2(FM_PCD_MANIP_REASM_TIMEOUT_THREAD_THRESH, log2num);
    tsbs = bitFor1Micro - log2num;

    ccReassmTimeoutParams.iprcpt = (uint32_t)(XX_VirtToPhys(
            h_ReasmCommonPramTbl) - p_FmPcd->physicalMuramBase);
    ccReassmTimeoutParams.tsbs = (uint8_t)tsbs;
    ccReassmTimeoutParams.activate = TRUE;
    if ((err = FmHcPcdCcTimeoutReassm(p_FmPcd->h_Hc, &ccReassmTimeoutParams,
                                      &result)) != E_OK)
        RETURN_ERROR(MAJOR, err, NO_MSG);

    switch (result)
    {
        case (0):
            return E_OK;
        case (1):
            RETURN_ERROR(MAJOR, E_NO_MEMORY, ("failed to allocate TNUM"));
        case (2):
            RETURN_ERROR(
                    MAJOR, E_NO_MEMORY,
                    ("failed to allocate internal buffer from the HC-Port"));
        case (3):
            RETURN_ERROR(MAJOR, E_INVALID_VALUE,
                         ("'Disable Timeout Task' with invalid IPRCPT"));
        case (4):
            RETURN_ERROR(MAJOR, E_FULL, ("too many timeout tasks"));
        case (5):
            RETURN_ERROR(MAJOR, E_INVALID_SELECTION, ("invalid sub command"));
        default:
            RETURN_ERROR(MAJOR, E_INVALID_VALUE, NO_MSG);
    }
    return E_OK;
}
