
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_8__ {scalar_t__ h_Ipv4Ad; } ;
struct TYPE_7__ {TYPE_2__ ip; int dataMemId; } ;
struct TYPE_9__ {TYPE_1__ reassmParams; scalar_t__ h_FmPcd; } ;
typedef TYPE_3__ t_FmPcdManip ;
typedef int t_FmPcd ;
typedef int t_Error ;


 int E_NO_MEMORY ;
 int FM_PCD_CC_AD_ENTRY_SIZE ;
 int FM_PCD_CC_AD_TABLE_ALIGN ;
 int FillReassmManipParams (TYPE_3__*,int ) ;
 int HEADER_TYPE_IPv4 ;
 int MAJOR ;
 int RETURN_ERROR (int ,int ,char*) ;
 int ReleaseManipHandler (TYPE_3__*,int *) ;
 scalar_t__ XX_MallocSmart (int ,int ,int ) ;
 int memset (scalar_t__,int ,int ) ;

__attribute__((used)) static t_Error SetIpv4ReassmManip(t_FmPcdManip *p_Manip)
{
    t_FmPcd *p_FmPcd = (t_FmPcd *)p_Manip->h_FmPcd;


    p_Manip->reassmParams.ip.h_Ipv4Ad = (t_Handle)XX_MallocSmart(
            FM_PCD_CC_AD_ENTRY_SIZE, p_Manip->reassmParams.dataMemId,
            FM_PCD_CC_AD_TABLE_ALIGN);
    if (!p_Manip->reassmParams.ip.h_Ipv4Ad)
    {
        ReleaseManipHandler(p_Manip, p_FmPcd);
        RETURN_ERROR(MAJOR, E_NO_MEMORY,
                     ("Allocation of IPv4 table descriptor"));
    }

    memset(p_Manip->reassmParams.ip.h_Ipv4Ad, 0, FM_PCD_CC_AD_ENTRY_SIZE);


    return FillReassmManipParams(p_Manip, HEADER_TYPE_IPv4);
}
