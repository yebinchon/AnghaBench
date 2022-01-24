#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct TYPE_25__ {int nextAdIdx; int cfg; int /*<<< orphan*/  opCode; int /*<<< orphan*/  hmcdBasePtr; } ;
typedef  TYPE_3__ t_Hmtd ;
struct TYPE_23__ {scalar_t__ dontParseAfterManip; } ;
struct TYPE_24__ {TYPE_1__ hdr; } ;
struct TYPE_26__ {TYPE_5__* h_NextManip; TYPE_2__ u; } ;
typedef  TYPE_4__ t_FmPcdManipParams ;
struct TYPE_27__ {scalar_t__ nextManipType; int tableSize; int dataSize; scalar_t__ unifiedPosition; int /*<<< orphan*/ * h_Ad; scalar_t__ h_FmPcd; scalar_t__ muramAllocate; int /*<<< orphan*/ * p_Hmct; void* cascaded; scalar_t__ dontParseAfterManip; int /*<<< orphan*/ * p_Data; struct TYPE_27__* h_PrevManip; TYPE_4__ manipParams; struct TYPE_27__* h_NextManip; } ;
typedef  TYPE_5__ t_FmPcdManip ;
struct TYPE_28__ {scalar_t__ h_FmMuram; scalar_t__ physicalMuramBase; } ;
typedef  TYPE_6__ t_FmPcd ;
typedef  scalar_t__ t_Error ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 scalar_t__ FUNC1 (TYPE_4__*,int*,int*) ; 
 scalar_t__ E_NO_MEMORY ; 
 scalar_t__ E_OK ; 
 void* FALSE ; 
 scalar_t__ FUNC2 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FM_PCD_CC_AD_TABLE_ALIGN ; 
 scalar_t__ FUNC4 (scalar_t__,int,int) ; 
 scalar_t__ FUNC5 (TYPE_5__*) ; 
 scalar_t__ FUNC6 (TYPE_5__*) ; 
 scalar_t__ FUNC7 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HMAN_OC ; 
 int HMTD_CFG_NEXT_AD_EN ; 
 int HMTD_CFG_PRS_AFTER_HM ; 
 int HMTD_CFG_TYPE ; 
 int /*<<< orphan*/  MAJOR ; 
 scalar_t__ FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_5__*) ; 
 scalar_t__ FUNC10 (TYPE_5__*) ; 
 scalar_t__ FUNC11 (TYPE_5__*) ; 
 scalar_t__ FUNC12 (TYPE_5__*) ; 
 scalar_t__ FUNC13 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MINOR ; 
 char* NO_MSG ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC19 (int,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ *) ; 
 scalar_t__ e_FM_PCD_MANIP_HDR ; 
 int /*<<< orphan*/  e_MANIP_HMCT ; 
 scalar_t__ e_MANIP_UNIFIED_FIRST ; 

__attribute__((used)) static t_Error FUNC24(t_FmPcdManip *p_Manip,
                                    t_FmPcdManipParams *p_FmPcdManipParams)
{
    t_FmPcdManip *p_CurManip;
    t_Error err;
    uint32_t nextSize = 0, totalSize;
    uint16_t tmpReg;
    uint8_t *p_OldHmct, *p_TmpHmctPtr, *p_TmpDataPtr;

    /* set Manip structure */

    p_Manip->dontParseAfterManip =
            p_FmPcdManipParams->u.hdr.dontParseAfterManip;

    if (p_FmPcdManipParams->h_NextManip)
    {   /* Next Header manipulation exists */
        p_Manip->nextManipType = FUNC11(p_FmPcdManipParams->h_NextManip);

        if ((p_Manip->nextManipType == e_FM_PCD_MANIP_HDR) && p_Manip->dontParseAfterManip)
            nextSize = (uint32_t)(FUNC6(p_FmPcdManipParams->h_NextManip)
                    + FUNC5(p_FmPcdManipParams->h_NextManip));
        else /* either parsing is required or next manip is Frag; no table merging. */
            p_Manip->cascaded = TRUE;
        /* pass up the "cascaded" attribute. The whole chain is cascaded
         * if something is cascaded along the way. */
        if (FUNC12(p_FmPcdManipParams->h_NextManip))
            p_Manip->cascaded = TRUE;
    }

    /* Allocate new table */
    /* calculate table size according to manip parameters */
    err = FUNC1(p_FmPcdManipParams, &p_Manip->tableSize,
                             &p_Manip->dataSize);
    if (err)
        FUNC18(MINOR, err, NO_MSG);

    totalSize = (uint16_t)(p_Manip->tableSize + p_Manip->dataSize + nextSize);

    p_Manip->p_Hmct = (uint8_t*)FUNC2(
            ((t_FmPcd *)p_Manip->h_FmPcd)->h_FmMuram, totalSize, 4);
    if (!p_Manip->p_Hmct)
        FUNC18(MAJOR, E_NO_MEMORY, ("MURAM alloc failed"));

    if (p_Manip->dataSize)
        p_Manip->p_Data =
                (uint8_t*)FUNC16(p_Manip->p_Hmct, (p_Manip->tableSize + nextSize));

    /* update shadow size to allow runtime replacement of Header manipulation */
    /* The allocated shadow is divided as follows:
     0 . . .       16 . . .
     --------------------------------
     |   Shadow   |   Shadow HMTD   |
     |   HMTD     |   Match Table   |
     | (16 bytes) | (maximal size)  |
     --------------------------------
     */

    err = FUNC4(p_Manip->h_FmPcd, (uint32_t)(totalSize + 16),
                              (uint16_t)FM_PCD_CC_AD_TABLE_ALIGN);
    if (err != E_OK)
    {
        FUNC3(p_Manip->h_FmPcd, p_Manip->p_Hmct);
        FUNC18(MAJOR, E_NO_MEMORY,
                     ("MURAM allocation for HdrManip node shadow"));
    }

    if (p_FmPcdManipParams->h_NextManip
            && (p_Manip->nextManipType == e_FM_PCD_MANIP_HDR)
            && (FUNC8(p_Manip)))
    {
        p_OldHmct = (uint8_t *)FUNC7(p_FmPcdManipParams->h_NextManip,
                                            e_MANIP_HMCT);
        p_CurManip = p_FmPcdManipParams->h_NextManip;
        /* Run till the last Manip (which is the first to configure) */
        while (FUNC13(p_CurManip))
            p_CurManip = p_CurManip->h_NextManip;

        while (p_CurManip)
        {
            /* If this is a unified table, point to the part of the table
             * which is the relative offset in HMCT.
             */
            p_TmpHmctPtr = (uint8_t*)FUNC16(p_Manip->p_Hmct,
                    (p_Manip->tableSize +
                            (FUNC17(p_CurManip->p_Hmct) -
                                    FUNC17(p_OldHmct))));
            if (p_CurManip->p_Data)
                p_TmpDataPtr = (uint8_t*)FUNC16(p_Manip->p_Hmct,
                        (p_Manip->tableSize +
                                (FUNC17(p_CurManip->p_Data) -
                                        FUNC17(p_OldHmct))));
            else
                p_TmpDataPtr = NULL;

            FUNC0(p_CurManip, &p_CurManip->manipParams, p_TmpHmctPtr,
                      p_TmpDataPtr, FALSE);
            /* update old manip table pointer */
            FUNC15(p_CurManip, p_TmpHmctPtr);
            FUNC14(p_CurManip, p_TmpDataPtr);

            p_CurManip = p_CurManip->h_PrevManip;
        }
        /* We copied the HMCT to create a new large HMCT so we can free the old one */
        FUNC3(FUNC10(p_FmPcdManipParams->h_NextManip),
                         p_OldHmct);
    }

    /* Fill table */
    err = FUNC0(p_Manip, p_FmPcdManipParams, p_Manip->p_Hmct,
                    p_Manip->p_Data, TRUE);
    if (err)
    {
        FUNC3(p_Manip->h_FmPcd, p_Manip->p_Hmct);
        FUNC18(MINOR, err, NO_MSG);
    }

    /* Build HMTD (table descriptor) */
     tmpReg = HMTD_CFG_TYPE; /* NADEN = 0 */

     /* add parseAfterManip */
      if (!p_Manip->dontParseAfterManip)
          tmpReg |= HMTD_CFG_PRS_AFTER_HM;

    /* create cascade */
    /*if (p_FmPcdManipParams->h_NextManip
            && (!MANIP_DONT_REPARSE(p_Manip) || (p_Manip->nextManipType != e_FM_PCD_MANIP_HDR)))*/
    if (p_Manip->cascaded)
    {
        uint16_t nextAd;
        /* indicate that there's another HM table descriptor */
        tmpReg |= HMTD_CFG_NEXT_AD_EN;
        /* get address of next HMTD (table descriptor; h_Ad).
         * If the next HMTD was removed due to table unifing, get the address
         * of the "next next" as written in the h_Ad of the next h_Manip node.
         */
        if (p_Manip->unifiedPosition != e_MANIP_UNIFIED_FIRST)
            nextAd = (uint16_t)((uint32_t)(FUNC23(FUNC9(p_FmPcdManipParams->h_NextManip)) - (((t_FmPcd*)p_Manip->h_FmPcd)->physicalMuramBase)) >> 4);
        else
            nextAd = ((t_Hmtd *)((t_FmPcdManip *)p_FmPcdManipParams->h_NextManip)->h_Ad)->nextAdIdx;

        FUNC19(((t_Hmtd *)p_Manip->h_Ad)->nextAdIdx, nextAd);
    }

    FUNC19(((t_Hmtd *)p_Manip->h_Ad)->cfg, tmpReg);
    FUNC20(
            ((t_Hmtd *)p_Manip->h_Ad)->hmcdBasePtr,
            (uint32_t)(FUNC23(p_Manip->p_Hmct) - (((t_FmPcd*)p_Manip->h_FmPcd)->physicalMuramBase)));

    FUNC21(((t_Hmtd *)p_Manip->h_Ad)->opCode, HMAN_OC);

    if (p_Manip->unifiedPosition == e_MANIP_UNIFIED_FIRST)
    {
        /* The HMTD of the next Manip is never going to be used */
        if (((t_FmPcdManip *)p_FmPcdManipParams->h_NextManip)->muramAllocate)
            FUNC3(
                    ((t_FmPcd *)((t_FmPcdManip *)p_FmPcdManipParams->h_NextManip)->h_FmPcd)->h_FmMuram,
                    ((t_FmPcdManip *)p_FmPcdManipParams->h_NextManip)->h_Ad);
        else
            FUNC22(((t_FmPcdManip *)p_FmPcdManipParams->h_NextManip)->h_Ad);
        ((t_FmPcdManip *)p_FmPcdManipParams->h_NextManip)->h_Ad = NULL;
    }

    return E_OK;
}