
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int inUse; int scId; struct TYPE_8__* h_FmMacsec; } ;
typedef TYPE_1__ t_SecYSc ;
typedef TYPE_1__ t_FmMacsecSecY ;
typedef int t_Error ;
typedef scalar_t__ e_ScType ;


 int ASSERT_COND (TYPE_1__*) ;
 int E_OK ;
 int FALSE ;
 int FmMacsecDeleteRxSc (TYPE_1__*,int ) ;
 int FmMacsecDeleteTxSc (TYPE_1__*,int ) ;
 int MINOR ;
 int NO_MSG ;
 int RETURN_ERROR (int ,int ,int ) ;
 scalar_t__ e_SC_RX ;

__attribute__((used)) static t_Error FmMacsecSecYDeleteSc(t_FmMacsecSecY *p_FmMacsecSecY, t_SecYSc *p_FmSecYSc, e_ScType type)
{
    t_Error err = E_OK;

    ASSERT_COND(p_FmMacsecSecY);
    ASSERT_COND(p_FmMacsecSecY->h_FmMacsec);
    ASSERT_COND(p_FmSecYSc);

    if (type == e_SC_RX)
    {
        if ((err = FmMacsecDeleteRxSc(p_FmMacsecSecY->h_FmMacsec, p_FmSecYSc->scId)) != E_OK)
            RETURN_ERROR(MINOR, err, NO_MSG);
    }
    else
        if ((err = FmMacsecDeleteTxSc(p_FmMacsecSecY->h_FmMacsec, p_FmSecYSc->scId)) != E_OK)
            RETURN_ERROR(MINOR, err, NO_MSG);

    p_FmSecYSc->inUse = FALSE;

    return err;
}
