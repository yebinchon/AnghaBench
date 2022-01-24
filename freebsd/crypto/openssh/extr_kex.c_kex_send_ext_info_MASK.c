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
struct ssh {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSH2_MSG_EXT_INFO ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int,int,char) ; 
 int FUNC2 (struct ssh*,char*) ; 
 int FUNC3 (struct ssh*,int) ; 
 int FUNC4 (struct ssh*) ; 
 int FUNC5 (struct ssh*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct ssh *ssh)
{
	int r;
	char *algs;

	if ((algs = FUNC1(0, 1, 1, ',')) == NULL)
		return SSH_ERR_ALLOC_FAIL;
	/* XXX filter algs list by allowed pubkey/hostbased types */
	if ((r = FUNC5(ssh, SSH2_MSG_EXT_INFO)) != 0 ||
	    (r = FUNC3(ssh, 1)) != 0 ||
	    (r = FUNC2(ssh, "server-sig-algs")) != 0 ||
	    (r = FUNC2(ssh, algs)) != 0 ||
	    (r = FUNC4(ssh)) != 0)
		goto out;
	/* success */
	r = 0;
 out:
	FUNC0(algs);
	return r;
}