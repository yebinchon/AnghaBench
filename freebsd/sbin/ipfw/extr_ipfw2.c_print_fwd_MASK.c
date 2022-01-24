#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_9__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  char* uint16_t ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr {int dummy; } ;
struct buf_pr {int dummy; } ;
struct TYPE_13__ {scalar_t__ s_addr; } ;
struct TYPE_10__ {char* sin_port; char* sin6_port; TYPE_9__ sin_addr; } ;
struct TYPE_11__ {TYPE_1__ sa; } ;
typedef  TYPE_2__ ipfw_insn_sa6 ;
typedef  TYPE_2__ ipfw_insn_sa ;
struct TYPE_12__ {scalar_t__ opcode; } ;
typedef  TYPE_4__ ipfw_insn ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ IF_NAMESIZE ; 
 scalar_t__ INADDR_ANY ; 
 scalar_t__ INET6_ADDRSTRLEN ; 
 int /*<<< orphan*/  NI_NUMERICHOST ; 
 scalar_t__ O_FORWARD_IP ; 
 int /*<<< orphan*/  FUNC0 (struct buf_pr*,char*,...) ; 
 scalar_t__ FUNC1 (struct sockaddr const*,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (TYPE_9__) ; 
 TYPE_2__* FUNC3 (TYPE_4__ const*,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC4(struct buf_pr *bp, const ipfw_insn *cmd)
{
	char buf[INET6_ADDRSTRLEN + IF_NAMESIZE + 2];
	ipfw_insn_sa6 *sa6;
	ipfw_insn_sa *sa;
	uint16_t port;

	if (cmd->opcode == O_FORWARD_IP) {
		sa = FUNC3(cmd, sa);
		port = sa->sa.sin_port;
		if (sa->sa.sin_addr.s_addr == INADDR_ANY)
			FUNC0(bp, "fwd tablearg");
		else
			FUNC0(bp, "fwd %s", FUNC2(sa->sa.sin_addr));
	} else {
		sa6 = FUNC3(cmd, sa6);
		port = sa6->sa.sin6_port;
		FUNC0(bp, "fwd ");
		if (FUNC1((const struct sockaddr *)&sa6->sa,
		    sizeof(struct sockaddr_in6), buf, sizeof(buf), NULL, 0,
		    NI_NUMERICHOST) == 0)
			FUNC0(bp, "%s", buf);
	}
	if (port != 0)
		FUNC0(bp, ",%u", port);
}