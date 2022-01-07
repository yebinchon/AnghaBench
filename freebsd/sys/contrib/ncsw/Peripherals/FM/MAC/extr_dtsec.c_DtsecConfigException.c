
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
typedef int t_Error ;
struct TYPE_3__ {int exceptions; int enTsuErrExeption; int ptpTsuEnabled; struct TYPE_3__* p_DtsecDriverParam; } ;
typedef TYPE_1__ t_Dtsec ;
typedef int e_FmMacExceptions ;


 int E_INVALID_HANDLE ;
 int E_INVALID_STATE ;
 int E_INVALID_VALUE ;
 int E_OK ;
 int FALSE ;
 int GET_EXCEPTION_FLAG (int,int ) ;
 int MAJOR ;
 int RETURN_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;
 int TRUE ;
 int e_FM_MAC_EX_1G_1588_TS_RX_ERR ;

__attribute__((used)) static t_Error DtsecConfigException(t_Handle h_Dtsec, e_FmMacExceptions exception, bool enable)
{
    t_Dtsec *p_Dtsec = (t_Dtsec *)h_Dtsec;
    uint32_t bitMask = 0;

    SANITY_CHECK_RETURN_ERROR(p_Dtsec, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_Dtsec->p_DtsecDriverParam, E_INVALID_STATE);

    if (exception != e_FM_MAC_EX_1G_1588_TS_RX_ERR)
    {
        GET_EXCEPTION_FLAG(bitMask, exception);
        if (bitMask)
        {
            if (enable)
                p_Dtsec->exceptions |= bitMask;
            else
                p_Dtsec->exceptions &= ~bitMask;
        }
        else
            RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("Undefined exception"));
    }
    else
    {
        if (!p_Dtsec->ptpTsuEnabled)
            RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("Exception valid for 1588 only"));

        if (enable)
            p_Dtsec->enTsuErrExeption = TRUE;
        else
            p_Dtsec->enTsuErrExeption = FALSE;
    }

    return E_OK;
}
