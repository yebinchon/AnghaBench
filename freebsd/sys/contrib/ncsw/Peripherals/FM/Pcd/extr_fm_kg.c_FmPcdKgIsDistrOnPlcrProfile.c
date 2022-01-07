
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_6__ {TYPE_1__* p_FmPcdKg; } ;
typedef TYPE_3__ t_FmPcd ;
struct TYPE_5__ {scalar_t__ nextRelativePlcrProfile; scalar_t__ bitOffsetInPlcrProfile; scalar_t__ extractedOrs; int valid; } ;
struct TYPE_4__ {TYPE_2__* schemes; } ;


 int ASSERT_COND (int ) ;
 int FALSE ;
 int TRUE ;

bool FmPcdKgIsDistrOnPlcrProfile(t_Handle h_FmPcd, uint8_t schemeId)
{
    t_FmPcd *p_FmPcd = (t_FmPcd*)h_FmPcd;

   ASSERT_COND(p_FmPcd->p_FmPcdKg->schemes[schemeId].valid);

    if ((p_FmPcd->p_FmPcdKg->schemes[schemeId].extractedOrs &&
        p_FmPcd->p_FmPcdKg->schemes[schemeId].bitOffsetInPlcrProfile) ||
        p_FmPcd->p_FmPcdKg->schemes[schemeId].nextRelativePlcrProfile)
        return TRUE;
    else
        return FALSE;

}
