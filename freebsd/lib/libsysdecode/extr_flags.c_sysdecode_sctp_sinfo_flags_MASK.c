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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int SCTP_PR_SCTP_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  sctpsinfoflags ; 
 char* FUNC2 (int) ; 

void
FUNC3(FILE *fp, int sinfo_flags)
{
	const char *temp;
	int rem;
	bool printed;

	printed = FUNC1(fp, sctpsinfoflags, sinfo_flags, &rem);
	if (rem & ~SCTP_PR_SCTP_ALL) {
		FUNC0(fp, "%s%#x", printed ? "|" : "", rem & ~SCTP_PR_SCTP_ALL);
		printed = true;
		rem &= ~SCTP_PR_SCTP_ALL;
	}
	if (rem != 0) {
		temp = FUNC2(rem);
		if (temp != NULL) {
			FUNC0(fp, "%s%s", printed ? "|" : "", temp);
		} else {
			FUNC0(fp, "%s%#x", printed ? "|" : "", rem);
		}
	}
}