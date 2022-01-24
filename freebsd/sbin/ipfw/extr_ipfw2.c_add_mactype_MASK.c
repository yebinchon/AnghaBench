#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ipfw_insn_u16 ;
struct TYPE_4__ {int /*<<< orphan*/  opcode; } ;
typedef  TYPE_1__ ipfw_insn ;

/* Variables and functions */
 int /*<<< orphan*/  EX_DATAERR ; 
 int /*<<< orphan*/  IPPROTO_ETHERTYPE ; 
 int /*<<< orphan*/  O_MAC_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static ipfw_insn *
FUNC3(ipfw_insn *cmd, char *av, int cblen)
{
	if (!av)
		FUNC0(EX_DATAERR, "missing MAC type");
	if (FUNC2(av, "any") != 0) { /* we have a non-null type */
		FUNC1((ipfw_insn_u16 *)cmd, av, IPPROTO_ETHERTYPE,
		    cblen);
		cmd->opcode = O_MAC_TYPE;
		return cmd;
	} else
		return NULL;
}