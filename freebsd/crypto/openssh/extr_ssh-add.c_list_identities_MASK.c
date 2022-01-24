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
typedef  scalar_t__ u_int32_t ;
struct ssh_identitylist {size_t nkeys; char** comments; int /*<<< orphan*/ * keys; } ;

/* Variables and functions */
 int SSH_ERR_AGENT_NO_IDENTITIES ; 
 int /*<<< orphan*/  SSH_FP_DEFAULT ; 
 int /*<<< orphan*/  fingerprint_hash ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 char* FUNC3 (int) ; 
 int FUNC4 (int,struct ssh_identitylist**) ; 
 int /*<<< orphan*/  FUNC5 (struct ssh_identitylist*) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC11(int agent_fd, int do_fp)
{
	char *fp;
	int r;
	struct ssh_identitylist *idlist;
	u_int32_t left;
	size_t i;

	if ((r = FUNC4(agent_fd, &idlist)) != 0) {
		if (r != SSH_ERR_AGENT_NO_IDENTITIES)
			FUNC0(stderr, "error fetching identities: %s\n",
			    FUNC3(r));
		else
			FUNC2("The agent has no identities.\n");
		return -1;
	}
	for (i = 0; i < idlist->nkeys; i++) {
		if (do_fp) {
			fp = FUNC6(idlist->keys[i],
			    fingerprint_hash, SSH_FP_DEFAULT);
			FUNC2("%u %s %s (%s)\n", FUNC8(idlist->keys[i]),
			    fp == NULL ? "(null)" : fp, idlist->comments[i],
			    FUNC9(idlist->keys[i]));
			FUNC1(fp);
		} else {
			if ((r = FUNC10(idlist->keys[i], stdout)) != 0) {
				FUNC0(stderr, "sshkey_write: %s\n",
				    FUNC3(r));
				continue;
			}
			FUNC0(stdout, " %s", idlist->comments[i]);
			left = FUNC7(idlist->keys[i]);
			if (left > 0)
				FUNC0(stdout,
				    " [signatures left %ld]", left);
			FUNC0(stdout, "\n");
		}
	}
	FUNC5(idlist);
	return 0;
}