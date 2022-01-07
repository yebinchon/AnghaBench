
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32_t ;
typedef int t_PortTblEntry ;
typedef int t_OidsTblEntry ;
struct TYPE_17__ {TYPE_6__* autoResMaxSizes; } ;
struct TYPE_19__ {TYPE_7__ deepSleepVars; } ;
typedef TYPE_9__ t_FmPort ;
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
struct t_FmPortDsarParams {TYPE_8__* p_AutoResFilteringInfo; TYPE_5__* p_AutoResSnmpInfo; TYPE_4__* p_AutoResNdpInfo; TYPE_3__* p_AutoResEchoIpv6Info; TYPE_2__* p_AutoResEchoIpv4Info; TYPE_1__* p_AutoResArpInfo; } ;
struct arOffsets {int arp; int icmpv4; int icmpv6; int nd; int snmp; int filtIp; int filtUdp; int filtTcp; int stats; } ;
struct TYPE_18__ {int udpPortsTableSize; int tcpPortsTableSize; scalar_t__ ipProtTableSize; } ;
struct TYPE_16__ {scalar_t__ maxNumOfSnmpOidChar; } ;
struct TYPE_15__ {int numOfIpv4Addresses; int numOfIpv6Addresses; int oidsTblSize; } ;
struct TYPE_14__ {int tableSizeAssigned; int tableSizeTmp; } ;
struct TYPE_13__ {int tableSize; } ;
struct TYPE_12__ {int tableSize; } ;
struct TYPE_11__ {int tableSize; } ;


 int ROUND_UP (int,int) ;

__attribute__((used)) static uint32_t AR_ComputeOffsets(struct arOffsets* of,
                                  struct t_FmPortDsarParams *params,
                                  t_FmPort *p_FmPort)
{
    uint32_t size = sizeof(t_ArCommonDesc);

    if (params->p_AutoResArpInfo)
    {
        size = ROUND_UP(size,4);
        of->arp = size;
        size += sizeof(t_DsarArpDescriptor);
        size += sizeof(t_DsarArpBindingEntry)
                * params->p_AutoResArpInfo->tableSize;
        size += sizeof(t_DsarArpStatistics);
    }

    if (params->p_AutoResEchoIpv4Info)
    {
        size = ROUND_UP(size,4);
        of->icmpv4 = size;
        size += sizeof(t_DsarIcmpV4Descriptor);
        size += sizeof(t_DsarIcmpV4BindingEntry)
                * params->p_AutoResEchoIpv4Info->tableSize;
        size += sizeof(t_DsarIcmpV4Statistics);
    }

    if (params->p_AutoResEchoIpv6Info)
    {
        size = ROUND_UP(size,4);
        of->icmpv6 = size;
        size += sizeof(t_DsarIcmpV6Descriptor);
        size += sizeof(t_DsarIcmpV6BindingEntry)
                * params->p_AutoResEchoIpv6Info->tableSize;
        size += sizeof(t_DsarIcmpV6Statistics);
    }

    if (params->p_AutoResNdpInfo)
    {
        size = ROUND_UP(size,4);
        of->nd = size;
        size += sizeof(t_DsarNdDescriptor);
        size += sizeof(t_DsarIcmpV6BindingEntry)
                * (params->p_AutoResNdpInfo->tableSizeAssigned
                        + params->p_AutoResNdpInfo->tableSizeTmp);
        size += sizeof(t_DsarIcmpV6Statistics);
    }

    if (params->p_AutoResSnmpInfo)
    {
        size = ROUND_UP(size,4);
        of->snmp = size;
        size += sizeof(t_DsarSnmpDescriptor);
        size += sizeof(t_DsarSnmpIpv4AddrTblEntry)
                * params->p_AutoResSnmpInfo->numOfIpv4Addresses;
        size += sizeof(t_DsarSnmpIpv6AddrTblEntry)
                * params->p_AutoResSnmpInfo->numOfIpv6Addresses;
        size += sizeof(t_OidsTblEntry) * params->p_AutoResSnmpInfo->oidsTblSize;
        size += p_FmPort->deepSleepVars.autoResMaxSizes->maxNumOfSnmpOidChar;
        size += sizeof(t_DsarIcmpV6Statistics);
    }

    size = ROUND_UP(size,4);
    if (params->p_AutoResFilteringInfo)
    {
        of->filtIp = size;
        size += params->p_AutoResFilteringInfo->ipProtTableSize;
        size = ROUND_UP(size,4);
        of->filtUdp = size;
        size += params->p_AutoResFilteringInfo->udpPortsTableSize
                * sizeof(t_PortTblEntry);
        size = ROUND_UP(size,4);
        of->filtTcp = size;
        size += params->p_AutoResFilteringInfo->tcpPortsTableSize
                * sizeof(t_PortTblEntry);
    }


    size = ROUND_UP(size,4);
    of->stats = size;
    size += sizeof(t_ArStatistics);
    return size;
}
