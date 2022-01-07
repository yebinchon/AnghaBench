
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int h_Spinlock; int node; } ;
typedef TYPE_1__ t_FmPcdLock ;
typedef int t_FmPcd ;
typedef int t_Error ;


 int E_INVALID_STATE ;
 int E_NO_MEMORY ;
 int E_OK ;
 int EnqueueLockToFreeLst (int *,TYPE_1__*) ;
 int INIT_LIST (int *) ;
 int MINOR ;
 int RETURN_ERROR (int ,int ,char*) ;
 int XX_Free (TYPE_1__*) ;
 int XX_InitSpinlock () ;
 scalar_t__ XX_Malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static t_Error FillFreeLocksLst(t_FmPcd *p_FmPcd)
{
    t_FmPcdLock *p_Lock;
    int i;

    for (i=0; i<10; i++)
    {
        p_Lock = (t_FmPcdLock *)XX_Malloc(sizeof(t_FmPcdLock));
        if (!p_Lock)
            RETURN_ERROR(MINOR, E_NO_MEMORY, ("FM-PCD lock obj!"));
        memset(p_Lock, 0, sizeof(t_FmPcdLock));
        INIT_LIST(&p_Lock->node);
        p_Lock->h_Spinlock = XX_InitSpinlock();
        if (!p_Lock->h_Spinlock)
        {
            XX_Free(p_Lock);
            RETURN_ERROR(MINOR, E_INVALID_STATE, ("FM-PCD spinlock obj!"));
        }
        EnqueueLockToFreeLst(p_FmPcd, p_Lock);
    }

    return E_OK;
}
