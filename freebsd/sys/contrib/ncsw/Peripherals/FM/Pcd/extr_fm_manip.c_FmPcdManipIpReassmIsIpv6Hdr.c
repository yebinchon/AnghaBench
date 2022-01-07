
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_4__ {scalar_t__ hdr; } ;
struct TYPE_5__ {TYPE_1__ reassmParams; } ;
typedef TYPE_2__ t_FmPcdManip ;


 int ASSERT_COND (TYPE_2__*) ;
 scalar_t__ HEADER_TYPE_IPv6 ;

bool FmPcdManipIpReassmIsIpv6Hdr(t_Handle h_Manip)
{
    t_FmPcdManip *p_Manip = (t_FmPcdManip *)h_Manip;

    ASSERT_COND(p_Manip);

    return (p_Manip->reassmParams.hdr == HEADER_TYPE_IPv6);
}
