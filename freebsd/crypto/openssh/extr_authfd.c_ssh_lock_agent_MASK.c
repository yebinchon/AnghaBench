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
typedef  int /*<<< orphan*/  u_char ;
struct sshbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSH_AGENTC_LOCK ; 
 int /*<<< orphan*/  SSH_AGENTC_UNLOCK ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,struct sshbuf*,struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct sshbuf*) ; 
 int FUNC3 (struct sshbuf*,int /*<<< orphan*/ *) ; 
 struct sshbuf* FUNC4 () ; 
 int FUNC5 (struct sshbuf*,char const*) ; 
 int FUNC6 (struct sshbuf*,int /*<<< orphan*/ ) ; 

int
FUNC7(int sock, int lock, const char *password)
{
	int r;
	u_char type = lock ? SSH_AGENTC_LOCK : SSH_AGENTC_UNLOCK;
	struct sshbuf *msg;

	if ((msg = FUNC4()) == NULL)
		return SSH_ERR_ALLOC_FAIL;
	if ((r = FUNC6(msg, type)) != 0 ||
	    (r = FUNC5(msg, password)) != 0)
		goto out;
	if ((r = FUNC1(sock, msg, msg)) != 0)
		goto out;
	if ((r = FUNC3(msg, &type)) != 0)
		goto out;
	r = FUNC0(type);
 out:
	FUNC2(msg);
	return r;
}