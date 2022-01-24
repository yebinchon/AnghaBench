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
typedef  int /*<<< orphan*/  u_short ;
typedef  int /*<<< orphan*/  associd_t ;

/* Variables and functions */
 int ERR_INCOMPLETE ; 
 int ERR_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*,char const**,int) ; 
 int /*<<< orphan*/  havehost ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int,size_t,char const*) ; 
 int /*<<< orphan*/  sequence ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC4(
	int opcode,
	associd_t associd,
	int auth,
	size_t qsize,
	const char *qdata,
	u_short *rstatus,
	size_t *rsize,
	const char **rdata,
	int quiet
	)
{
	int res;
	int done;

	/*
	 * Check to make sure host is open
	 */
	if (!havehost) {
		FUNC0(stderr, "***No host open, use `host' command\n");
		return -1;
	}

	done = 0;
	sequence++;

    again:
	/*
	 * send a request
	 */
	res = FUNC2(opcode, associd, auth, qsize, qdata);
	if (res != 0)
		return res;

	/*
	 * Get the response.  If we got a standard error, print a message
	 */
	res = FUNC1(opcode, associd, rstatus, rsize, rdata, done);

	if (res > 0) {
		if (!done && (res == ERR_TIMEOUT || res == ERR_INCOMPLETE)) {
			if (res == ERR_INCOMPLETE) {
				/*
				 * better bump the sequence so we don't
				 * get confused about differing fragments.
				 */
				sequence++;
			}
			done = 1;
			goto again;
		}
		if (!quiet)
			FUNC3(res, associd);

	}
	return res;
}