
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ h_FqidMm; scalar_t__ h_RsrvFqidMm; scalar_t__ h_Session; scalar_t__ p_PfdrBase; scalar_t__ p_FqdBase; } ;
typedef TYPE_1__ t_Qm ;


 int MM_Free (scalar_t__) ;
 int XX_FreeSmart (scalar_t__) ;
 int XX_IpcFreeSession (scalar_t__) ;

__attribute__((used)) static void FreeInitResources(t_Qm *p_Qm)
{
    if (p_Qm->p_FqdBase)
        XX_FreeSmart(p_Qm->p_FqdBase);
    if (p_Qm->p_PfdrBase)
        XX_FreeSmart(p_Qm->p_PfdrBase);
    if (p_Qm->h_Session)
        XX_IpcFreeSession(p_Qm->h_Session);
    if (p_Qm->h_RsrvFqidMm)
        MM_Free(p_Qm->h_RsrvFqidMm);
    if (p_Qm->h_FqidMm)
        MM_Free(p_Qm->h_FqidMm);
}
