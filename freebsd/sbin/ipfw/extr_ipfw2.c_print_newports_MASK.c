#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct buf_pr {int dummy; } ;
struct TYPE_3__ {scalar_t__* ports; } ;
typedef  TYPE_1__ ipfw_insn_u16 ;
typedef  int /*<<< orphan*/  ipfw_insn ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _port_name ; 
 int /*<<< orphan*/  FUNC1 (struct buf_pr*,char*,...) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct buf_pr*,int,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(struct buf_pr *bp, ipfw_insn_u16 *cmd, int proto, int opcode)
{
	uint16_t *p = cmd->ports;
	int i;
	char const *sep;

	if (opcode != 0) {
		sep = FUNC2(_port_name, opcode);
		if (sep == NULL)
			sep = "???";
		FUNC1(bp, " %s", sep);
	}
	sep = " ";
	for (i = FUNC0((ipfw_insn *)cmd) - 1; i > 0; i--, p += 2) {
		FUNC1(bp, "%s", sep);
		FUNC3(bp, proto, p[0]);
		if (p[0] != p[1]) {
			FUNC1(bp, "-");
			FUNC3(bp, proto, p[1]);
		}
		sep = ",";
	}
}