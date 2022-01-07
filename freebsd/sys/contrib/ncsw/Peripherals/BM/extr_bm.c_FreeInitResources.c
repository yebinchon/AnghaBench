
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ h_BpidMm; scalar_t__ h_Session; scalar_t__ p_FbprBase; } ;
typedef TYPE_1__ t_Bm ;


 int MM_Free (scalar_t__) ;
 int XX_FreeSmart (scalar_t__) ;
 int XX_IpcFreeSession (scalar_t__) ;

__attribute__((used)) static void FreeInitResources(t_Bm *p_Bm)
{
    if (p_Bm->p_FbprBase)
        XX_FreeSmart(p_Bm->p_FbprBase);
    if (p_Bm->h_Session)
        XX_IpcFreeSession(p_Bm->h_Session);
    if (p_Bm->h_BpidMm)
        MM_Free(p_Bm->h_BpidMm);
}
