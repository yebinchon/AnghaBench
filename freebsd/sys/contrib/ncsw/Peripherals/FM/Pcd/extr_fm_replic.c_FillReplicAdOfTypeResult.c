
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int nia; int plcrProfile; } ;
typedef TYPE_1__ t_AdOfTypeResult ;


 int FM_PCD_AD_RESULT_EXTENDED_MODE ;
 int FRM_REPLIC_FR_BIT ;
 int FRM_REPLIC_NL_BIT ;
 int GET_UINT32 (int ) ;
 int WRITE_UINT32 (int ,int) ;

__attribute__((used)) static void FillReplicAdOfTypeResult(void *p_ReplicAd, bool last)
{
    t_AdOfTypeResult *p_CurrReplicAd = (t_AdOfTypeResult*)p_ReplicAd;
    uint32_t tmp;

    tmp = GET_UINT32(p_CurrReplicAd->plcrProfile);
    if (last)

        WRITE_UINT32(p_CurrReplicAd->plcrProfile,(tmp & ~FRM_REPLIC_NL_BIT));
    else

        WRITE_UINT32(p_CurrReplicAd->plcrProfile, (tmp |FRM_REPLIC_NL_BIT));


    tmp = GET_UINT32(p_CurrReplicAd->nia);
    WRITE_UINT32(p_CurrReplicAd->nia,
        (tmp | FRM_REPLIC_FR_BIT | FM_PCD_AD_RESULT_EXTENDED_MODE ));
}
