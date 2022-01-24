#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ifvxlancmd {int /*<<< orphan*/  vxlcmd_flags; } ;
struct afswtch {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  VXLAN_CMD_FLAG_FLUSH_ALL ; 
 int /*<<< orphan*/  VXLAN_CMD_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (struct ifvxlancmd*,int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,struct ifvxlancmd*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 

__attribute__((used)) static void
FUNC3(const char *val, int d, int s, const struct afswtch *afp)
{
	struct ifvxlancmd cmd;

	FUNC0(&cmd, sizeof(cmd));
	if (d != 0)
		cmd.vxlcmd_flags |= VXLAN_CMD_FLAG_FLUSH_ALL;

	if (FUNC1(s, VXLAN_CMD_FLUSH, &cmd, sizeof(cmd), 1) < 0)
		FUNC2(1, "VXLAN_CMD_FLUSH");
}