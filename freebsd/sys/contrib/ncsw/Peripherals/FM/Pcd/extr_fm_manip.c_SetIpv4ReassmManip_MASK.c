#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ t_Handle ;
struct TYPE_8__ {scalar_t__ h_Ipv4Ad; } ;
struct TYPE_7__ {TYPE_2__ ip; int /*<<< orphan*/  dataMemId; } ;
struct TYPE_9__ {TYPE_1__ reassmParams; scalar_t__ h_FmPcd; } ;
typedef  TYPE_3__ t_FmPcdManip ;
typedef  int /*<<< orphan*/  t_FmPcd ;
typedef  int /*<<< orphan*/  t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  E_NO_MEMORY ; 
 int /*<<< orphan*/  FM_PCD_CC_AD_ENTRY_SIZE ; 
 int /*<<< orphan*/  FM_PCD_CC_AD_TABLE_ALIGN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HEADER_TYPE_IPv4 ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static t_Error FUNC5(t_FmPcdManip *p_Manip)
{
    t_FmPcd *p_FmPcd = (t_FmPcd *)p_Manip->h_FmPcd;

    /* Allocation if IPv4 Action descriptor */
    p_Manip->reassmParams.ip.h_Ipv4Ad = (t_Handle)FUNC3(
            FM_PCD_CC_AD_ENTRY_SIZE, p_Manip->reassmParams.dataMemId,
            FM_PCD_CC_AD_TABLE_ALIGN);
    if (!p_Manip->reassmParams.ip.h_Ipv4Ad)
    {
        FUNC2(p_Manip, p_FmPcd);
        FUNC1(MAJOR, E_NO_MEMORY,
                     ("Allocation of IPv4 table descriptor"));
    }

    FUNC4(p_Manip->reassmParams.ip.h_Ipv4Ad, 0, FM_PCD_CC_AD_ENTRY_SIZE);

    /* Fill reassembly manipulation parameter in the IP Reassembly Action Descriptor */
    return FUNC0(p_Manip, HEADER_TYPE_IPv4);
}