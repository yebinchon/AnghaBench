
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_6__ {scalar_t__ h_Ipv6Scheme; scalar_t__ h_Ipv4Scheme; } ;
struct TYPE_5__ {TYPE_2__ ip; } ;
struct TYPE_7__ {TYPE_1__ reassmParams; } ;
typedef TYPE_3__ t_FmPcdManip ;
typedef int t_Error ;


 int ASSERT_COND (TYPE_3__*) ;
 int E_OK ;
 int FM_PCD_KgSchemeDelete (scalar_t__) ;
 int FmPcdKgIsSchemeHasOwners (scalar_t__) ;

t_Error FmPcdManipDeleteIpReassmSchemes(t_Handle h_Manip)
{
    t_FmPcdManip *p_Manip = (t_FmPcdManip *)h_Manip;

    ASSERT_COND(p_Manip);

    if ((p_Manip->reassmParams.ip.h_Ipv4Scheme) &&
        !FmPcdKgIsSchemeHasOwners(p_Manip->reassmParams.ip.h_Ipv4Scheme))
        FM_PCD_KgSchemeDelete(p_Manip->reassmParams.ip.h_Ipv4Scheme);

    if ((p_Manip->reassmParams.ip.h_Ipv6Scheme) &&
        !FmPcdKgIsSchemeHasOwners(p_Manip->reassmParams.ip.h_Ipv6Scheme))
        FM_PCD_KgSchemeDelete(p_Manip->reassmParams.ip.h_Ipv6Scheme);

    return E_OK;
}
