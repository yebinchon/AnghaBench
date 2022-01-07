
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_5__ {size_t numOfFqids; scalar_t__ fqidBase; int h_Qm; int shadowMode; struct TYPE_5__** p_Fqs; int h_QmPortal; } ;
typedef TYPE_1__ t_QmFqr ;
typedef scalar_t__ t_Handle ;
typedef int t_Error ;


 int ERROR_CODE (int ) ;
 int E_INVALID_HANDLE ;
 int E_OK ;
 int QmFqidPut (int ,scalar_t__) ;
 int XX_Free (TYPE_1__**) ;
 int XX_FreeSmart (TYPE_1__*) ;
 int qm_free_fq (int ,TYPE_1__*) ;

t_Error QM_FQR_Free(t_Handle h_QmFqr)
{
    t_QmFqr *p_QmFqr = (t_QmFqr *)h_QmFqr;
    uint32_t i;

    if (!p_QmFqr)
        return ERROR_CODE(E_INVALID_HANDLE);

    if (p_QmFqr->p_Fqs)
    {
        for (i=0;i<p_QmFqr->numOfFqids;i++)
            if (p_QmFqr->p_Fqs[i])
            {
                if (!p_QmFqr->shadowMode)
                    qm_free_fq(p_QmFqr->h_QmPortal, p_QmFqr->p_Fqs[i]);
                XX_FreeSmart(p_QmFqr->p_Fqs[i]);
            }
        XX_Free(p_QmFqr->p_Fqs);
    }

    if (!p_QmFqr->shadowMode && p_QmFqr->fqidBase)
        QmFqidPut(p_QmFqr->h_Qm, p_QmFqr->fqidBase);

    XX_FreeSmart(p_QmFqr);

    return E_OK;
}
