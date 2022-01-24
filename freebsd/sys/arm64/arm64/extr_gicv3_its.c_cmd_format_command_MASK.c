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
typedef  int /*<<< orphan*/  uint8_t ;
struct its_cmd {int /*<<< orphan*/ * cmd_dword; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_COMMAND_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline void
FUNC1(struct its_cmd *cmd, uint8_t cmd_type)
{
	/* Command field: DW0 [7:0] */
	cmd->cmd_dword[0] &= FUNC0(~CMD_COMMAND_MASK);
	cmd->cmd_dword[0] |= FUNC0(cmd_type);
}