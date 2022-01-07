
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int t_QmReceivedFrameCallback ;
struct TYPE_7__ {int numOfFqids; TYPE_2__** p_Fqs; } ;
typedef TYPE_3__ t_QmFqr ;
typedef scalar_t__ t_Handle ;
typedef int t_Error ;
struct TYPE_5__ {int * dqrr; } ;
struct TYPE_6__ {scalar_t__ h_App; TYPE_1__ cb; } ;


 int E_INVALID_HANDLE ;
 int E_OK ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_3__*,int ) ;

t_Error QM_FQR_RegisterCB(t_Handle h_QmFqr, t_QmReceivedFrameCallback *f_CallBack, t_Handle h_App)
{
    t_QmFqr *p_QmFqr = (t_QmFqr *)h_QmFqr;
    int i;

    SANITY_CHECK_RETURN_ERROR(p_QmFqr, E_INVALID_HANDLE);

    for (i=0;i<p_QmFqr->numOfFqids;i++)
    {
        p_QmFqr->p_Fqs[i]->cb.dqrr = f_CallBack;
        p_QmFqr->p_Fqs[i]->h_App = h_App;
    }

    return E_OK;
}
