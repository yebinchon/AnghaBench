
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int pcAndOffsets; int ccAdBase; } ;
typedef TYPE_1__ t_AdOfTypeContLookup ;


 int ASSERT_COND (void*) ;
 int FM_PCD_AD_CONT_LOOKUP_TYPE ;
 int FM_PCD_CC_AD_ENTRY_SIZE ;
 int FRM_REPLIC_SOURCE_TD_OPCODE ;
 int IOMemSet32 (int *,int ,int ) ;
 int WRITE_UINT32 (int ,int ) ;

__attribute__((used)) static void BuildSourceTd(void *p_Ad)
{
    t_AdOfTypeContLookup *p_SourceTd;

    ASSERT_COND(p_Ad);

    p_SourceTd = (t_AdOfTypeContLookup *)p_Ad;

    IOMemSet32((uint8_t*)p_SourceTd, 0, FM_PCD_CC_AD_ENTRY_SIZE);


    WRITE_UINT32(p_SourceTd->ccAdBase, FM_PCD_AD_CONT_LOOKUP_TYPE);
    WRITE_UINT32(p_SourceTd->pcAndOffsets, FRM_REPLIC_SOURCE_TD_OPCODE);
}
