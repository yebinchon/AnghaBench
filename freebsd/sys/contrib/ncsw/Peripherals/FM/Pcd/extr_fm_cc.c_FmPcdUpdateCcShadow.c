
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_7__ {scalar_t__ ccShadowSize; scalar_t__ ccShadowAlign; void* p_CcShadow; } ;
typedef TYPE_1__ t_FmPcd ;
typedef int t_Error ;


 int ASSERT_COND (TYPE_1__*) ;
 int E_INVALID_VALUE ;
 int E_NO_MEMORY ;
 int E_OK ;
 int FALSE ;
 void* FM_MURAM_AllocMem (int ,scalar_t__,scalar_t__) ;
 int FM_MURAM_FreeMem (int ,void*) ;
 int FmPcdGetMuramHandle (TYPE_1__*) ;
 scalar_t__ FmPcdLock (TYPE_1__*) ;
 int FmPcdUnlock (TYPE_1__*,scalar_t__) ;
 int MAJOR ;
 int POWER_OF_2 (scalar_t__) ;
 int RETURN_ERROR (int ,int ,char*) ;
 int TRUE ;

t_Error FmPcdUpdateCcShadow(t_FmPcd *p_FmPcd, uint32_t size, uint32_t align)
{
    uint32_t intFlags;
    uint32_t newSize = 0, newAlign = 0;
    bool allocFail = FALSE;

    ASSERT_COND(p_FmPcd);

    if (!size)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("size must be larger then 0"));

    if (!POWER_OF_2(align))
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("alignment must be power of 2"));

    newSize = p_FmPcd->ccShadowSize;
    newAlign = p_FmPcd->ccShadowAlign;


    if (size > p_FmPcd->ccShadowSize)
        newSize = size;


    if (align > p_FmPcd->ccShadowAlign)
        newAlign = align;



    if ((newSize != p_FmPcd->ccShadowSize)
            || (newAlign != p_FmPcd->ccShadowAlign))
    {
        intFlags = FmPcdLock(p_FmPcd);

        if (p_FmPcd->p_CcShadow)
        {
            FM_MURAM_FreeMem(FmPcdGetMuramHandle(p_FmPcd), p_FmPcd->p_CcShadow);
            p_FmPcd->ccShadowSize = 0;
            p_FmPcd->ccShadowAlign = 0;
        }

        p_FmPcd->p_CcShadow = FM_MURAM_AllocMem(FmPcdGetMuramHandle(p_FmPcd),
                                                newSize, newAlign);
        if (!p_FmPcd->p_CcShadow)
        {
            allocFail = TRUE;



            p_FmPcd->p_CcShadow = FM_MURAM_AllocMem(
                    FmPcdGetMuramHandle(p_FmPcd), p_FmPcd->ccShadowSize,
                    p_FmPcd->ccShadowAlign);
        }

        FmPcdUnlock(p_FmPcd, intFlags);

        if (allocFail)
            RETURN_ERROR(MAJOR, E_NO_MEMORY,
                         ("MURAM allocation for CC Shadow memory"));

        p_FmPcd->ccShadowSize = newSize;
        p_FmPcd->ccShadowAlign = newAlign;
    }

    return E_OK;
}
