#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  t_PortTblEntry ;
typedef  int /*<<< orphan*/  t_OidsTblEntry ;
struct TYPE_10__ {int maxNumOfArpEntries; int maxNumOfEchoIpv4Entries; int maxNumOfEchoIpv6Entries; int maxNumOfNdpEntries; int maxNumOfSnmpIPV4Entries; int maxNumOfSnmpIPV6Entries; int maxNumOfSnmpOidEntries; int maxNumOfUdpPortFiltering; int maxNumOfTcpPortFiltering; scalar_t__ maxNumOfIpProtFiltering; scalar_t__ maxNumOfSnmpOidChar; } ;
typedef  TYPE_4__ t_FmPortDsarTablesSizes ;
struct TYPE_7__ {TYPE_4__* autoResMaxSizes; } ;
struct TYPE_11__ {scalar_t__ fmMuramPhysBaseAddr; TYPE_3__* p_FmPortBmiRegs; int /*<<< orphan*/  h_FmMuram; TYPE_1__ deepSleepVars; } ;
typedef  TYPE_5__ t_FmPort ;
typedef  int /*<<< orphan*/  t_Error ;
typedef  int /*<<< orphan*/  t_DsarSnmpIpv6AddrTblEntry ;
typedef  int /*<<< orphan*/  t_DsarSnmpIpv4AddrTblEntry ;
typedef  int /*<<< orphan*/  t_DsarSnmpDescriptor ;
typedef  int /*<<< orphan*/  t_DsarNdDescriptor ;
typedef  int /*<<< orphan*/  t_DsarIcmpV6Statistics ;
typedef  int /*<<< orphan*/  t_DsarIcmpV6Descriptor ;
typedef  int /*<<< orphan*/  t_DsarIcmpV6BindingEntry ;
typedef  int /*<<< orphan*/  t_DsarIcmpV4Statistics ;
typedef  int /*<<< orphan*/  t_DsarIcmpV4Descriptor ;
typedef  int /*<<< orphan*/  t_DsarIcmpV4BindingEntry ;
typedef  int /*<<< orphan*/  t_DsarArpStatistics ;
typedef  int /*<<< orphan*/  t_DsarArpDescriptor ;
typedef  int /*<<< orphan*/  t_DsarArpBindingEntry ;
typedef  int /*<<< orphan*/  t_ArStatistics ;
typedef  int /*<<< orphan*/  t_ArCommonDesc ;
struct TYPE_8__ {int /*<<< orphan*/  fmbm_rgpr; } ;
struct TYPE_9__ {TYPE_2__ rxPortBmiRegs; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int* FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static t_Error FUNC6(t_FmPort *p_FmPort)
{
    uint32_t *param_page;
    t_FmPortDsarTablesSizes *params = p_FmPort->deepSleepVars.autoResMaxSizes;
    t_ArCommonDesc *ArCommonDescPtr;
    uint32_t size = sizeof(t_ArCommonDesc);
    // ARP
    // should put here if (params->max_num_of_arp_entries)?
    size = FUNC2(size,4);
    size += sizeof(t_DsarArpDescriptor);
    size += sizeof(t_DsarArpBindingEntry) * params->maxNumOfArpEntries;
    size += sizeof(t_DsarArpStatistics);
    //ICMPV4
    size = FUNC2(size,4);
    size += sizeof(t_DsarIcmpV4Descriptor);
    size += sizeof(t_DsarIcmpV4BindingEntry) * params->maxNumOfEchoIpv4Entries;
    size += sizeof(t_DsarIcmpV4Statistics);
    //ICMPV6
    size = FUNC2(size,4);
    size += sizeof(t_DsarIcmpV6Descriptor);
    size += sizeof(t_DsarIcmpV6BindingEntry) * params->maxNumOfEchoIpv6Entries;
    size += sizeof(t_DsarIcmpV6Statistics);
    //ND
    size = FUNC2(size,4);
    size += sizeof(t_DsarNdDescriptor);
    size += sizeof(t_DsarIcmpV6BindingEntry) * params->maxNumOfNdpEntries;
    size += sizeof(t_DsarIcmpV6Statistics);
    //SNMP
    size = FUNC2(size,4);
    size += sizeof(t_DsarSnmpDescriptor);
    size += sizeof(t_DsarSnmpIpv4AddrTblEntry)
            * params->maxNumOfSnmpIPV4Entries;
    size += sizeof(t_DsarSnmpIpv6AddrTblEntry)
            * params->maxNumOfSnmpIPV6Entries;
    size += sizeof(t_OidsTblEntry) * params->maxNumOfSnmpOidEntries;
    size += params->maxNumOfSnmpOidChar;
    size += sizeof(t_DsarIcmpV6Statistics);
    //filters
    size = FUNC2(size,4);
    size += params->maxNumOfIpProtFiltering;
    size = FUNC2(size,4);
    size += params->maxNumOfUdpPortFiltering * sizeof(t_PortTblEntry);
    size = FUNC2(size,4);
    size += params->maxNumOfTcpPortFiltering * sizeof(t_PortTblEntry);

    // add here for more protocols

    // statistics
    size = FUNC2(size,4);
    size += sizeof(t_ArStatistics);

    ArCommonDescPtr = FUNC0(p_FmPort->h_FmMuram, size, 0x10);

    param_page =
            FUNC4(
                    p_FmPort->fmMuramPhysBaseAddr
                            + FUNC1(p_FmPort->p_FmPortBmiRegs->rxPortBmiRegs.fmbm_rgpr));
    FUNC3(
            *param_page,
            (uint32_t)(FUNC5(ArCommonDescPtr) - p_FmPort->fmMuramPhysBaseAddr));
    return E_OK;
}