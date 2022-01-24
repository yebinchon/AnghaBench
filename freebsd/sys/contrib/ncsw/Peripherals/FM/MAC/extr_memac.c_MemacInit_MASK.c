#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_9__ {int majorRev; int minorRev; } ;
struct TYPE_7__ {struct memac_cfg* h_Fm; int /*<<< orphan*/  macId; TYPE_6__ fmRevInfo; } ;
struct memac_cfg {int macId; struct memac_cfg* p_MemacDriverParam; TYPE_1__ fmMacControllerDriver; void* p_UnicastAddrHash; void* p_MulticastAddrHash; int /*<<< orphan*/  max_frame_length; TYPE_2__* p_MemMap; int /*<<< orphan*/  exceptions; int /*<<< orphan*/  enetMode; int /*<<< orphan*/  addr; scalar_t__ reset_on_init; } ;
typedef  struct memac_cfg t_Memac ;
typedef  scalar_t__ t_Handle ;
typedef  scalar_t__ t_Error ;
typedef  scalar_t__ t_EnetAddr ;
typedef  enum enet_speed { ____Placeholder_enet_speed } enet_speed ;
typedef  enum enet_interface { ____Placeholder_enet_interface } enet_interface ;
typedef  scalar_t__ e_FmMacType ;
struct TYPE_8__ {int /*<<< orphan*/  command_config; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct memac_cfg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CMD_CFG_CRC_FWD ; 
 int /*<<< orphan*/  CheckInitParameters ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_INVALID_STATE ; 
 scalar_t__ E_NO_MEMORY ; 
 scalar_t__ E_OK ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC4 (struct memac_cfg*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (struct memac_cfg*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct memac_cfg*) ; 
 scalar_t__ FUNC6 (struct memac_cfg*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct memac_cfg*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HASH_TABLE_SIZE ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  MemacErrException ; 
 int /*<<< orphan*/  MemacException ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct memac_cfg*,int /*<<< orphan*/ ) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct memac_cfg*) ; 
 scalar_t__ e_ENET_SPEED_10000 ; 
 int /*<<< orphan*/  e_FM_INTR_TYPE_ERR ; 
 int /*<<< orphan*/  e_FM_INTR_TYPE_NORMAL ; 
 scalar_t__ e_FM_MAC_10G ; 
 scalar_t__ e_FM_MAC_1G ; 
 int /*<<< orphan*/  e_FM_MOD_10G_MAC ; 
 int /*<<< orphan*/  e_FM_MOD_1G_MAC ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,struct memac_cfg*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 TYPE_2__* g_MemacRegs ; 

__attribute__((used)) static t_Error FUNC18(t_Handle h_Memac)
{
    t_Memac                 *p_Memac = (t_Memac *)h_Memac;
    struct memac_cfg        *p_MemacDriverParam;
    enum enet_interface     enet_interface;
    enum enet_speed         enet_speed;
    t_EnetAddr              ethAddr;
    e_FmMacType             portType;
    t_Error                 err;
    bool                    slow_10g_if = FALSE;
    if (p_Memac->macId == 3) /* This is a quick WA */
		g_MemacRegs = p_Memac->p_MemMap;

    FUNC12(p_Memac, E_INVALID_HANDLE);
    FUNC12(p_Memac->p_MemacDriverParam, E_INVALID_STATE);
    FUNC12(p_Memac->fmMacControllerDriver.h_Fm, E_INVALID_HANDLE);

    FUNC4(p_Memac->fmMacControllerDriver.h_Fm, &p_Memac->fmMacControllerDriver.fmRevInfo);
    if (p_Memac->fmMacControllerDriver.fmRevInfo.majorRev == 6 &&
        p_Memac->fmMacControllerDriver.fmRevInfo.minorRev == 4)
        slow_10g_if = TRUE;

    FUNC1(p_Memac, CheckInitParameters);

    p_MemacDriverParam = p_Memac->p_MemacDriverParam;

    portType =
        ((FUNC3(p_Memac->enetMode) < e_ENET_SPEED_10000) ? e_FM_MAC_1G : e_FM_MAC_10G);

    /* First, reset the MAC if desired. */
    if (p_MemacDriverParam->reset_on_init)
        FUNC17(p_Memac->p_MemMap);

    /* MAC Address */
    FUNC9(p_Memac->addr, ethAddr);
    FUNC15(p_Memac->p_MemMap, (uint8_t*)ethAddr, 0);

    enet_interface = (enum enet_interface) FUNC2(p_Memac->enetMode);
    enet_speed = (enum enet_speed) FUNC3(p_Memac->enetMode);

    FUNC16(p_Memac->p_MemMap,
               p_Memac->p_MemacDriverParam,
               enet_interface,
               enet_speed,
               slow_10g_if,
               p_Memac->exceptions);

#ifdef FM_RX_FIFO_CORRUPT_ERRATA_10GMAC_A006320
    {
    	uint32_t tmpReg = 0;

    	FM_GetRevision(p_Memac->fmMacControllerDriver.h_Fm, &p_Memac->fmMacControllerDriver.fmRevInfo);
        /* check the FMAN version - the bug exists only in rev1 */
        if ((p_Memac->fmMacControllerDriver.fmRevInfo.majorRev == 6) &&
        	(p_Memac->fmMacControllerDriver.fmRevInfo.minorRev == 0))
        {
        	/* MAC strips CRC from received frames - this workaround should
        	   decrease the likelihood of bug appearance
            */
			tmpReg = GET_UINT32(p_Memac->p_MemMap->command_config);
			tmpReg &= ~CMD_CFG_CRC_FWD;
			WRITE_UINT32(p_Memac->p_MemMap->command_config, tmpReg);
			/* DBG(WARNING, ("mEMAC strips CRC from received frames as part of A006320 errata workaround"));*/
        }
    }
#endif /* FM_RX_FIFO_CORRUPT_ERRATA_10GMAC_A006320 */

    FUNC10(h_Memac);

    /* Max Frame Length */
    err = FUNC6(p_Memac->fmMacControllerDriver.h_Fm,
                           portType,
                           p_Memac->fmMacControllerDriver.macId,
                           p_MemacDriverParam->max_frame_length);
    if (err)
        FUNC11(MAJOR, err, ("settings Mac max frame length is FAILED"));

    p_Memac->p_MulticastAddrHash = FUNC0(HASH_TABLE_SIZE);
    if (!p_Memac->p_MulticastAddrHash)
    {
        FUNC7(p_Memac);
        FUNC11(MAJOR, E_NO_MEMORY, ("allocation hash table is FAILED"));
    }

    p_Memac->p_UnicastAddrHash = FUNC0(HASH_TABLE_SIZE);
    if (!p_Memac->p_UnicastAddrHash)
    {
        FUNC7(p_Memac);
        FUNC11(MAJOR, E_NO_MEMORY, ("allocation hash table is FAILED"));
    }

    FUNC5(p_Memac->fmMacControllerDriver.h_Fm,
                   (portType == e_FM_MAC_10G) ? e_FM_MOD_10G_MAC : e_FM_MOD_1G_MAC,
                   p_Memac->macId,
                   e_FM_INTR_TYPE_ERR,
                   MemacErrException,
                   p_Memac);

    FUNC5(p_Memac->fmMacControllerDriver.h_Fm,
                   (portType == e_FM_MAC_10G) ? e_FM_MOD_10G_MAC : e_FM_MOD_1G_MAC,
                   p_Memac->macId,
                   e_FM_INTR_TYPE_NORMAL,
                   MemacException,
                   p_Memac);

    FUNC14(p_MemacDriverParam);
    p_Memac->p_MemacDriverParam = NULL;

    return E_OK;
}