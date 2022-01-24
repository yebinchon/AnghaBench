#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  h_App; int /*<<< orphan*/  (* f_Event ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;struct tgec_regs* p_MemMap; } ;
typedef  TYPE_1__ t_Tgec ;
typedef  scalar_t__ t_Handle ;
struct tgec_regs {int dummy; } ;

/* Variables and functions */
 int TGEC_IMASK_MDIO_CMD_CMPL ; 
 int TGEC_IMASK_MDIO_SCAN_EVENT ; 
 int /*<<< orphan*/  e_FM_MAC_EX_10G_MDIO_CMD_CMPL ; 
 int /*<<< orphan*/  e_FM_MAC_EX_10G_MDIO_SCAN_EVENTMDIO ; 
 int /*<<< orphan*/  FUNC0 (struct tgec_regs*,int) ; 
 int FUNC1 (struct tgec_regs*,int) ; 
 int FUNC2 (struct tgec_regs*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(t_Handle h_Tgec)
{
     t_Tgec             *p_Tgec = (t_Tgec *)h_Tgec;
     uint32_t           event;
     struct tgec_regs   *p_TgecMemMap = p_Tgec->p_MemMap;

     /* handle only MDIO events */
     event = FUNC1(p_TgecMemMap, (TGEC_IMASK_MDIO_SCAN_EVENT | TGEC_IMASK_MDIO_CMD_CMPL));
     event &= FUNC2(p_TgecMemMap);

     FUNC0(p_TgecMemMap, event);

     if (event & TGEC_IMASK_MDIO_SCAN_EVENT)
         p_Tgec->f_Event(p_Tgec->h_App, e_FM_MAC_EX_10G_MDIO_SCAN_EVENTMDIO);
     if (event & TGEC_IMASK_MDIO_CMD_CMPL)
         p_Tgec->f_Event(p_Tgec->h_App, e_FM_MAC_EX_10G_MDIO_CMD_CMPL);
}