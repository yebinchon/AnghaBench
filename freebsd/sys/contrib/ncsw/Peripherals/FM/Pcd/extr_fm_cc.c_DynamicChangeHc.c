
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
typedef int t_List ;
typedef int * t_Handle ;
typedef int t_FmPcdModifyCcKeyAdditionalParams ;
struct TYPE_2__ {int h_Hc; } ;
typedef TYPE_1__ t_FmPcd ;
typedef scalar_t__ t_Error ;


 int ASSERT_COND (int *) ;
 scalar_t__ E_INVALID_VALUE ;
 scalar_t__ E_OK ;
 scalar_t__ FmHcPcdCcDoDynamicChange (int ,scalar_t__,scalar_t__) ;
 scalar_t__ FmPcdCcGetNodeAddrOffsetFromNodeInfo (int *,int *) ;
 scalar_t__ ILLEGAL_BASE ;
 int MAJOR ;
 int * NCSW_LIST_FIRST (int *) ;
 int * NCSW_LIST_NEXT (int *) ;
 scalar_t__ NCSW_LIST_NumOfObjs (int *) ;
 int RETURN_ERROR (int ,scalar_t__,char*) ;
 int ReleaseModifiedDataStructure (int *,int *,int *,int *,int) ;

__attribute__((used)) static t_Error DynamicChangeHc(
        t_Handle h_FmPcd, t_List *h_OldPointersLst, t_List *h_NewPointersLst,
        t_FmPcdModifyCcKeyAdditionalParams *p_AdditionalParams,
        bool useShadowStructs)
{
    t_List *p_PosOld, *p_PosNew;
    uint32_t oldAdAddrOffset, newAdAddrOffset;
    uint16_t i = 0;
    t_Error err = E_OK;
    uint8_t numOfModifiedPtr;

    ASSERT_COND(h_FmPcd);
    ASSERT_COND(h_OldPointersLst);
    ASSERT_COND(h_NewPointersLst);

    numOfModifiedPtr = (uint8_t)NCSW_LIST_NumOfObjs(h_OldPointersLst);

    if (numOfModifiedPtr)
    {
        p_PosNew = NCSW_LIST_FIRST(h_NewPointersLst);
        p_PosOld = NCSW_LIST_FIRST(h_OldPointersLst);


        newAdAddrOffset = FmPcdCcGetNodeAddrOffsetFromNodeInfo(h_FmPcd,
                                                               p_PosNew);
        if (newAdAddrOffset == (uint32_t)ILLEGAL_BASE)
        {
            ReleaseModifiedDataStructure(h_FmPcd, h_OldPointersLst,
                                         h_NewPointersLst,
                                         p_AdditionalParams, useShadowStructs);
            RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("New AD address"));
        }

        for (i = 0; i < numOfModifiedPtr; i++)
        {

            oldAdAddrOffset = FmPcdCcGetNodeAddrOffsetFromNodeInfo(h_FmPcd,
                                                                   p_PosOld);
            if (oldAdAddrOffset == (uint32_t)ILLEGAL_BASE)
            {
                ReleaseModifiedDataStructure(h_FmPcd, h_OldPointersLst,
                                             h_NewPointersLst,
                                             p_AdditionalParams,
                                             useShadowStructs);
                RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("Old AD address"));
            }


            err = FmHcPcdCcDoDynamicChange(((t_FmPcd *)h_FmPcd)->h_Hc,
                                           oldAdAddrOffset, newAdAddrOffset);
            if (err)
            {
                ReleaseModifiedDataStructure(h_FmPcd, h_OldPointersLst,
                                             h_NewPointersLst,
                                             p_AdditionalParams,
                                             useShadowStructs);
                RETURN_ERROR(
                        MAJOR,
                        err,
                        ("For part of nodes changes are done - situation is danger"));
            }

            p_PosOld = NCSW_LIST_NEXT(p_PosOld);
        }
    }
    return E_OK;
}
