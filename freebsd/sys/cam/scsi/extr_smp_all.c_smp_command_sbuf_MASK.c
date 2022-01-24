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
struct sbuf {int dummy; } ;
struct ccb_smpio {int /*<<< orphan*/  smp_request_len; int /*<<< orphan*/ * smp_request; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sbuf*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(struct ccb_smpio *smpio, struct sbuf *sb,
		 char *line_prefix, int first_line_len, int line_len)
{
	FUNC0(sb, "%s. ", FUNC2(smpio->smp_request[1]));

	/*
	 * Acccount for the command description and the period and space
	 * after the command description.
	 */
	first_line_len -= FUNC3(FUNC2(smpio->smp_request[1])) + 2;

	FUNC1(smpio->smp_request, smpio->smp_request_len, sb,
			   line_prefix, first_line_len, line_len);
}