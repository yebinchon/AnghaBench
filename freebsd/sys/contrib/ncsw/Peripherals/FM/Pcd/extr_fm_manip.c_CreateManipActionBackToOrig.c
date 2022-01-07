
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int t_FmPcdManipParams ;
struct TYPE_7__ {struct TYPE_7__* h_PrevManip; int manipParams; int * p_Data; int * p_Hmct; struct TYPE_7__* h_NextManip; } ;
typedef TYPE_1__ t_FmPcdManip ;
typedef int t_Error ;


 int ASSERT_COND (int *) ;
 int BuildHmct (TYPE_1__*,int *,int *,int *,int ) ;
 int E_OK ;
 int FALSE ;
 scalar_t__ GetManipInfo (TYPE_1__*,int ) ;
 int MANIP_IS_UNIFIED (TYPE_1__*) ;
 scalar_t__ MANIP_IS_UNIFIED_NON_LAST (TYPE_1__*) ;
 int e_MANIP_HMCT ;

__attribute__((used)) static t_Error CreateManipActionBackToOrig(
        t_FmPcdManip *p_Manip, t_FmPcdManipParams *p_FmPcdManipParams)
{
    uint8_t *p_WholeHmct = ((void*)0), *p_TmpHmctPtr, *p_TmpDataPtr;
    t_FmPcdManip *p_CurManip = p_Manip;


    if (!MANIP_IS_UNIFIED(p_Manip))
        BuildHmct(p_Manip, p_FmPcdManipParams, p_Manip->p_Hmct, p_Manip->p_Data,
                  FALSE);
    else
    {
        p_WholeHmct = (uint8_t *)GetManipInfo(p_Manip, e_MANIP_HMCT);
        ASSERT_COND(p_WholeHmct);


        while (MANIP_IS_UNIFIED_NON_LAST(p_CurManip))
            p_CurManip = p_CurManip->h_NextManip;

        while (p_CurManip)
        {



            p_TmpHmctPtr = p_CurManip->p_Hmct;
            p_TmpDataPtr = p_CurManip->p_Data;

            BuildHmct(p_CurManip, &p_CurManip->manipParams, p_TmpHmctPtr,
                      p_TmpDataPtr, FALSE);

            p_CurManip = p_CurManip->h_PrevManip;
        }
    }

    return E_OK;
}
