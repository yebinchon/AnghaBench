#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int base_ver; int class_ver; int /*<<< orphan*/  trap_qkey; int /*<<< orphan*/  trap_hop_qp; int /*<<< orphan*/  trap_pkey; int /*<<< orphan*/  trap_lid; int /*<<< orphan*/  trap_tc_sl_fl; int /*<<< orphan*/  trap_gid; int /*<<< orphan*/  redir_qkey; int /*<<< orphan*/  redir_qp; int /*<<< orphan*/  redir_pkey; int /*<<< orphan*/  redir_lid; int /*<<< orphan*/  redir_tc_sl_fl; int /*<<< orphan*/  redir_gid; int /*<<< orphan*/  cap_mask; } ;
typedef  TYPE_1__ ib_class_port_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int INET6_ADDRSTRLEN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,int,int,int,char*,int,int,int,int,int,char*,int,int,int,int,int) ; 

__attribute__((used)) static void FUNC6(ib_class_port_info_t *cpi)
{
	char gid_str[INET6_ADDRSTRLEN];
	char gid_str2[INET6_ADDRSTRLEN];

	FUNC5("SA ClassPortInfo:\n"
	       "\t\tBase version.............%d\n"
	       "\t\tClass version............%d\n"
	       "\t\tCapability mask..........0x%04X\n"
	       "\t\tCapability mask 2........0x%08X\n"
	       "\t\tResponse time value......0x%02X\n"
	       "\t\tRedirect GID.............%s\n"
	       "\t\tRedirect TC/SL/FL........0x%08X\n"
	       "\t\tRedirect LID.............%u\n"
	       "\t\tRedirect PKey............0x%04X\n"
	       "\t\tRedirect QP..............0x%08X\n"
	       "\t\tRedirect QKey............0x%08X\n"
	       "\t\tTrap GID.................%s\n"
	       "\t\tTrap TC/SL/FL............0x%08X\n"
	       "\t\tTrap LID.................%u\n"
	       "\t\tTrap PKey................0x%04X\n"
	       "\t\tTrap HL/QP...............0x%08X\n"
	       "\t\tTrap QKey................0x%08X\n",
	       cpi->base_ver, cpi->class_ver, FUNC0(cpi->cap_mask),
	       FUNC2(cpi), FUNC3(cpi),
	       FUNC4(AF_INET6, &(cpi->redir_gid), gid_str, sizeof gid_str),
	       FUNC1(cpi->redir_tc_sl_fl), FUNC0(cpi->redir_lid),
	       FUNC0(cpi->redir_pkey), FUNC1(cpi->redir_qp),
	       FUNC1(cpi->redir_qkey),
	       FUNC4(AF_INET6, &(cpi->trap_gid), gid_str2, sizeof gid_str2),
	       FUNC1(cpi->trap_tc_sl_fl), FUNC0(cpi->trap_lid),
	       FUNC0(cpi->trap_pkey), FUNC1(cpi->trap_hop_qp),
	       FUNC1(cpi->trap_qkey));
}