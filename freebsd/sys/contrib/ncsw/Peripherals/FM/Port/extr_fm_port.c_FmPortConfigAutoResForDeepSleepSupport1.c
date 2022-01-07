
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
typedef int t_PortTblEntry ;
typedef int t_OidsTblEntry ;
struct TYPE_10__ {int maxNumOfArpEntries; int maxNumOfEchoIpv4Entries; int maxNumOfEchoIpv6Entries; int maxNumOfNdpEntries; int maxNumOfSnmpIPV4Entries; int maxNumOfSnmpIPV6Entries; int maxNumOfSnmpOidEntries; int maxNumOfUdpPortFiltering; int maxNumOfTcpPortFiltering; scalar_t__ maxNumOfIpProtFiltering; scalar_t__ maxNumOfSnmpOidChar; } ;
typedef TYPE_4__ t_FmPortDsarTablesSizes ;
struct TYPE_7__ {TYPE_4__* autoResMaxSizes; } ;
struct TYPE_11__ {scalar_t__ fmMuramPhysBaseAddr; TYPE_3__* p_FmPortBmiRegs; int h_FmMuram; TYPE_1__ deepSleepVars; } ;
typedef TYPE_5__ t_FmPort ;
typedef int t_Error ;
typedef int t_DsarSnmpIpv6AddrTblEntry ;
typedef int t_DsarSnmpIpv4AddrTblEntry ;
typedef int t_DsarSnmpDescriptor ;
typedef int t_DsarNdDescriptor ;
typedef int t_DsarIcmpV6Statistics ;
typedef int t_DsarIcmpV6Descriptor ;
typedef int t_DsarIcmpV6BindingEntry ;
typedef int t_DsarIcmpV4Statistics ;
typedef int t_DsarIcmpV4Descriptor ;
typedef int t_DsarIcmpV4BindingEntry ;
typedef int t_DsarArpStatistics ;
typedef int t_DsarArpDescriptor ;
typedef int t_DsarArpBindingEntry ;
typedef int t_ArStatistics ;
typedef int t_ArCommonDesc ;
struct TYPE_8__ {int fmbm_rgpr; } ;
struct TYPE_9__ {TYPE_2__ rxPortBmiRegs; } ;


 int E_OK ;
 int * FM_MURAM_AllocMem (int ,int,int) ;
 scalar_t__ GET_UINT32 (int ) ;
 int ROUND_UP (int,int) ;
 int WRITE_UINT32 (int,int) ;
 int* XX_PhysToVirt (scalar_t__) ;
 scalar_t__ XX_VirtToPhys (int *) ;

__attribute__((used)) static t_Error FmPortConfigAutoResForDeepSleepSupport1(t_FmPort *p_FmPort)
{
    uint32_t *param_page;
    t_FmPortDsarTablesSizes *params = p_FmPort->deepSleepVars.autoResMaxSizes;
    t_ArCommonDesc *ArCommonDescPtr;
    uint32_t size = sizeof(t_ArCommonDesc);


    size = ROUND_UP(size,4);
    size += sizeof(t_DsarArpDescriptor);
    size += sizeof(t_DsarArpBindingEntry) * params->maxNumOfArpEntries;
    size += sizeof(t_DsarArpStatistics);

    size = ROUND_UP(size,4);
    size += sizeof(t_DsarIcmpV4Descriptor);
    size += sizeof(t_DsarIcmpV4BindingEntry) * params->maxNumOfEchoIpv4Entries;
    size += sizeof(t_DsarIcmpV4Statistics);

    size = ROUND_UP(size,4);
    size += sizeof(t_DsarIcmpV6Descriptor);
    size += sizeof(t_DsarIcmpV6BindingEntry) * params->maxNumOfEchoIpv6Entries;
    size += sizeof(t_DsarIcmpV6Statistics);

    size = ROUND_UP(size,4);
    size += sizeof(t_DsarNdDescriptor);
    size += sizeof(t_DsarIcmpV6BindingEntry) * params->maxNumOfNdpEntries;
    size += sizeof(t_DsarIcmpV6Statistics);

    size = ROUND_UP(size,4);
    size += sizeof(t_DsarSnmpDescriptor);
    size += sizeof(t_DsarSnmpIpv4AddrTblEntry)
            * params->maxNumOfSnmpIPV4Entries;
    size += sizeof(t_DsarSnmpIpv6AddrTblEntry)
            * params->maxNumOfSnmpIPV6Entries;
    size += sizeof(t_OidsTblEntry) * params->maxNumOfSnmpOidEntries;
    size += params->maxNumOfSnmpOidChar;
    size += sizeof(t_DsarIcmpV6Statistics);

    size = ROUND_UP(size,4);
    size += params->maxNumOfIpProtFiltering;
    size = ROUND_UP(size,4);
    size += params->maxNumOfUdpPortFiltering * sizeof(t_PortTblEntry);
    size = ROUND_UP(size,4);
    size += params->maxNumOfTcpPortFiltering * sizeof(t_PortTblEntry);




    size = ROUND_UP(size,4);
    size += sizeof(t_ArStatistics);

    ArCommonDescPtr = FM_MURAM_AllocMem(p_FmPort->h_FmMuram, size, 0x10);

    param_page =
            XX_PhysToVirt(
                    p_FmPort->fmMuramPhysBaseAddr
                            + GET_UINT32(p_FmPort->p_FmPortBmiRegs->rxPortBmiRegs.fmbm_rgpr));
    WRITE_UINT32(
            *param_page,
            (uint32_t)(XX_VirtToPhys(ArCommonDescPtr) - p_FmPort->fmMuramPhysBaseAddr));
    return E_OK;
}
