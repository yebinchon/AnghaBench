
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_7__ {scalar_t__ h_FmPcd; int * h_Spinlock; scalar_t__ p_Hmct; scalar_t__ h_NextManip; scalar_t__ owner; } ;
typedef TYPE_1__ t_FmPcdManip ;
struct TYPE_8__ {int h_FmMuram; } ;
typedef TYPE_2__ t_FmPcd ;
typedef int t_Error ;


 int E_INVALID_HANDLE ;
 int E_INVALID_STATE ;
 int E_OK ;
 int FALSE ;
 int FM_MURAM_FreeMem (int ,scalar_t__) ;
 int FmPcdManipUpdateOwner (scalar_t__,int ) ;
 int MAJOR ;
 int MANIP_IS_UNIFIED (TYPE_1__*) ;
 scalar_t__ MANIP_IS_UNIFIED_FIRST (TYPE_1__*) ;
 int MANIP_SET_PREV (scalar_t__,int *) ;
 int RETURN_ERROR (int ,int ,char*) ;
 int ReleaseManipHandler (TYPE_1__*,scalar_t__) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;
 int XX_Free (scalar_t__) ;
 int XX_FreeSpinlock (int *) ;

t_Error FM_PCD_ManipNodeDelete(t_Handle h_ManipNode)
{
    t_FmPcdManip *p_Manip = (t_FmPcdManip *)h_ManipNode;

    SANITY_CHECK_RETURN_ERROR(p_Manip, E_INVALID_HANDLE);

    if (p_Manip->owner)
        RETURN_ERROR(
                MAJOR,
                E_INVALID_STATE,
                ("This manipulation node not be removed because this node is occupied, first - unbind this node "));

    if (p_Manip->h_NextManip)
    {
        MANIP_SET_PREV(p_Manip->h_NextManip, ((void*)0));
        FmPcdManipUpdateOwner(p_Manip->h_NextManip, FALSE);
    }

    if (p_Manip->p_Hmct
            && (MANIP_IS_UNIFIED_FIRST(p_Manip) || !MANIP_IS_UNIFIED(p_Manip)))
        FM_MURAM_FreeMem(((t_FmPcd *)p_Manip->h_FmPcd)->h_FmMuram,
                         p_Manip->p_Hmct);

    if (p_Manip->h_Spinlock)
    {
        XX_FreeSpinlock(p_Manip->h_Spinlock);
        p_Manip->h_Spinlock = ((void*)0);
    }

    ReleaseManipHandler(p_Manip, p_Manip->h_FmPcd);

    XX_Free(h_ManipNode);

    return E_OK;
}
