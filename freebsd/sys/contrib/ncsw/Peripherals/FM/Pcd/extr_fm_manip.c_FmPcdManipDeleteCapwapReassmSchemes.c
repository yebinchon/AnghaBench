
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_5__ {scalar_t__ h_Scheme; } ;
struct TYPE_6__ {TYPE_1__ capwap; } ;
struct TYPE_7__ {TYPE_2__ reassmParams; } ;
typedef TYPE_3__ t_FmPcdManip ;
typedef int t_Error ;


 int ASSERT_COND (TYPE_3__*) ;
 int E_OK ;
 int FM_PCD_KgSchemeDelete (scalar_t__) ;

t_Error FmPcdManipDeleteCapwapReassmSchemes(t_Handle h_Manip)
{
    t_FmPcdManip *p_Manip = (t_FmPcdManip *)h_Manip;

    ASSERT_COND(p_Manip);

    if (p_Manip->reassmParams.capwap.h_Scheme)
        FM_PCD_KgSchemeDelete(p_Manip->reassmParams.capwap.h_Scheme);

    return E_OK;
}
