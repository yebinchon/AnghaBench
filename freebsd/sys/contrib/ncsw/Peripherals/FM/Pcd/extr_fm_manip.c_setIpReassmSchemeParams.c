
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef scalar_t__ uint8_t ;
typedef size_t uint32_t ;
typedef int t_Handle ;
struct TYPE_22__ {int numOfUsedExtracts; int privateDflt0; int privateDflt1; size_t numOfUsedDflts; TYPE_2__* dflts; TYPE_10__* extractArray; } ;
struct TYPE_18__ {scalar_t__ grpId; int h_CcTree; } ;
struct TYPE_19__ {TYPE_4__ cc; } ;
struct TYPE_17__ {int numOfDistinctionUnits; scalar_t__* unitIds; int h_NetEnv; } ;
struct TYPE_14__ {int useHash; TYPE_8__ keyExtractAndHashParams; TYPE_5__ kgNextEngineParams; int nextEngine; TYPE_3__ netEnvParams; } ;
typedef TYPE_11__ t_FmPcdKgSchemeParams ;
typedef int t_FmPcd ;
typedef scalar_t__ e_FmPcdKgKnownFieldsDfltTypes ;
struct TYPE_15__ {int size; int offset; } ;
struct TYPE_20__ {int ipv6; int ipv4; } ;
struct TYPE_21__ {TYPE_1__ fromHdr; TYPE_6__ fullField; } ;
struct TYPE_23__ {int ignoreProtocolValidation; TYPE_7__ extractByHdrType; void* type; void* hdr; } ;
struct TYPE_16__ {int dfltSelect; scalar_t__ type; } ;
struct TYPE_13__ {TYPE_9__ extractByHdr; void* type; } ;


 int ASSERT_COND (int) ;
 int FALSE ;
 size_t FM_PCD_KG_NUM_OF_DEFAULT_GROUPS ;
 scalar_t__ FM_PCD_MAX_NUM_OF_DISTINCTION_UNITS ;
 int FmPcdGetNetEnvId (int ) ;
 scalar_t__ FmPcdNetEnvGetUnitId (int *,int ,void*,int,int ) ;
 void* HEADER_TYPE_IPv4 ;
 void* HEADER_TYPE_IPv6 ;
 void* HEADER_TYPE_USER_DEFINED_SHIM2 ;
 int NET_HEADER_FIELD_IPv4_DST_IP ;
 int NET_HEADER_FIELD_IPv4_PROTO ;
 int NET_HEADER_FIELD_IPv4_SRC_IP ;
 int NET_HEADER_FIELD_IPv6_DST_IP ;
 int NET_HEADER_FIELD_IPv6_SRC_IP ;
 int TRUE ;
 int e_FM_PCD_CC ;
 void* e_FM_PCD_EXTRACT_BY_HDR ;
 void* e_FM_PCD_EXTRACT_FROM_HDR ;
 void* e_FM_PCD_EXTRACT_FULL_FIELD ;
 int e_FM_PCD_KG_DFLT_GBL_0 ;

__attribute__((used)) static void setIpReassmSchemeParams(t_FmPcd* p_FmPcd,
                                    t_FmPcdKgSchemeParams *p_Scheme,
                                    t_Handle h_CcTree, bool ipv4,
                                    uint8_t groupId)
{
    uint32_t j;
    uint8_t res;


    p_Scheme->netEnvParams.numOfDistinctionUnits = 2;
    if (ipv4)
        res = FmPcdNetEnvGetUnitId(
                p_FmPcd, FmPcdGetNetEnvId(p_Scheme->netEnvParams.h_NetEnv),
                HEADER_TYPE_IPv4, FALSE, 0);
    else
        res = FmPcdNetEnvGetUnitId(
                p_FmPcd, FmPcdGetNetEnvId(p_Scheme->netEnvParams.h_NetEnv),
                HEADER_TYPE_IPv6, FALSE, 0);
    ASSERT_COND(res != FM_PCD_MAX_NUM_OF_DISTINCTION_UNITS);
    p_Scheme->netEnvParams.unitIds[0] = res;

    res = FmPcdNetEnvGetUnitId(
            p_FmPcd, FmPcdGetNetEnvId(p_Scheme->netEnvParams.h_NetEnv),
            HEADER_TYPE_USER_DEFINED_SHIM2, FALSE, 0);
    ASSERT_COND(res != FM_PCD_MAX_NUM_OF_DISTINCTION_UNITS);
    p_Scheme->netEnvParams.unitIds[1] = res;


    p_Scheme->nextEngine = e_FM_PCD_CC;
    p_Scheme->kgNextEngineParams.cc.h_CcTree = h_CcTree;
    p_Scheme->kgNextEngineParams.cc.grpId = groupId;
    p_Scheme->useHash = TRUE;


    if (ipv4 == TRUE)
    {
        p_Scheme->keyExtractAndHashParams.numOfUsedExtracts = 4;
        p_Scheme->keyExtractAndHashParams.extractArray[0].type =
                e_FM_PCD_EXTRACT_BY_HDR;
        p_Scheme->keyExtractAndHashParams.extractArray[0].extractByHdr.type =
                e_FM_PCD_EXTRACT_FULL_FIELD;
        p_Scheme->keyExtractAndHashParams.extractArray[0].extractByHdr.hdr =
                HEADER_TYPE_IPv4;
        p_Scheme->keyExtractAndHashParams.extractArray[0].extractByHdr.extractByHdrType.fullField.ipv4 =
                NET_HEADER_FIELD_IPv4_DST_IP;
        p_Scheme->keyExtractAndHashParams.extractArray[1].type =
                e_FM_PCD_EXTRACT_BY_HDR;
        p_Scheme->keyExtractAndHashParams.extractArray[1].extractByHdr.type =
                e_FM_PCD_EXTRACT_FULL_FIELD;
        p_Scheme->keyExtractAndHashParams.extractArray[1].extractByHdr.hdr =
                HEADER_TYPE_IPv4;
        p_Scheme->keyExtractAndHashParams.extractArray[1].extractByHdr.extractByHdrType.fullField.ipv4 =
                NET_HEADER_FIELD_IPv4_SRC_IP;
        p_Scheme->keyExtractAndHashParams.extractArray[2].type =
                e_FM_PCD_EXTRACT_BY_HDR;
        p_Scheme->keyExtractAndHashParams.extractArray[2].extractByHdr.type =
                e_FM_PCD_EXTRACT_FULL_FIELD;
        p_Scheme->keyExtractAndHashParams.extractArray[2].extractByHdr.hdr =
                HEADER_TYPE_IPv4;
        p_Scheme->keyExtractAndHashParams.extractArray[2].extractByHdr.extractByHdrType.fullField.ipv4 =
                NET_HEADER_FIELD_IPv4_PROTO;
        p_Scheme->keyExtractAndHashParams.extractArray[3].type =
                e_FM_PCD_EXTRACT_BY_HDR;
        p_Scheme->keyExtractAndHashParams.extractArray[3].extractByHdr.hdr =
                HEADER_TYPE_IPv4;
        p_Scheme->keyExtractAndHashParams.extractArray[3].extractByHdr.type =
                e_FM_PCD_EXTRACT_FROM_HDR;
        p_Scheme->keyExtractAndHashParams.extractArray[3].extractByHdr.ignoreProtocolValidation =
                FALSE;
        p_Scheme->keyExtractAndHashParams.extractArray[3].extractByHdr.extractByHdrType.fromHdr.size =
                2;
        p_Scheme->keyExtractAndHashParams.extractArray[3].extractByHdr.extractByHdrType.fromHdr.offset =
                4;
    }
    else
    {
        p_Scheme->keyExtractAndHashParams.numOfUsedExtracts = 3;
        p_Scheme->keyExtractAndHashParams.extractArray[0].type =
                e_FM_PCD_EXTRACT_BY_HDR;
        p_Scheme->keyExtractAndHashParams.extractArray[0].extractByHdr.type =
                e_FM_PCD_EXTRACT_FULL_FIELD;
        p_Scheme->keyExtractAndHashParams.extractArray[0].extractByHdr.hdr =
                HEADER_TYPE_IPv6;
        p_Scheme->keyExtractAndHashParams.extractArray[0].extractByHdr.extractByHdrType.fullField.ipv6 =
                NET_HEADER_FIELD_IPv6_DST_IP;
        p_Scheme->keyExtractAndHashParams.extractArray[1].type =
                e_FM_PCD_EXTRACT_BY_HDR;
        p_Scheme->keyExtractAndHashParams.extractArray[1].extractByHdr.type =
                e_FM_PCD_EXTRACT_FULL_FIELD;
        p_Scheme->keyExtractAndHashParams.extractArray[1].extractByHdr.hdr =
                HEADER_TYPE_IPv6;
        p_Scheme->keyExtractAndHashParams.extractArray[1].extractByHdr.extractByHdrType.fullField.ipv6 =
                NET_HEADER_FIELD_IPv6_SRC_IP;
        p_Scheme->keyExtractAndHashParams.extractArray[2].type =
                e_FM_PCD_EXTRACT_BY_HDR;
        p_Scheme->keyExtractAndHashParams.extractArray[2].extractByHdr.hdr =
                HEADER_TYPE_USER_DEFINED_SHIM2;
        p_Scheme->keyExtractAndHashParams.extractArray[2].extractByHdr.type =
                e_FM_PCD_EXTRACT_FROM_HDR;
        p_Scheme->keyExtractAndHashParams.extractArray[2].extractByHdr.extractByHdrType.fromHdr.size =
                4;
        p_Scheme->keyExtractAndHashParams.extractArray[2].extractByHdr.extractByHdrType.fromHdr.offset =
                4;
        p_Scheme->keyExtractAndHashParams.extractArray[2].extractByHdr.ignoreProtocolValidation =
                TRUE;
    }

    p_Scheme->keyExtractAndHashParams.privateDflt0 = 0x01020304;
    p_Scheme->keyExtractAndHashParams.privateDflt1 = 0x11121314;
    p_Scheme->keyExtractAndHashParams.numOfUsedDflts =
            FM_PCD_KG_NUM_OF_DEFAULT_GROUPS;
    for (j = 0; j < FM_PCD_KG_NUM_OF_DEFAULT_GROUPS; j++)
    {
        p_Scheme->keyExtractAndHashParams.dflts[j].type =
                (e_FmPcdKgKnownFieldsDfltTypes)j;
        p_Scheme->keyExtractAndHashParams.dflts[j].dfltSelect =
                e_FM_PCD_KG_DFLT_GBL_0;
    }
}
