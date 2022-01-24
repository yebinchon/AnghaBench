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
struct ssh {struct kex* kex; } ;
struct kex {int flags; int /*<<< orphan*/  my; scalar_t__ done; } ;

/* Variables and functions */
 scalar_t__ KEX_COOKIE_LEN ; 
 int KEX_INIT_SENT ; 
 int /*<<< orphan*/  SSH2_MSG_KEXINIT ; 
 int SSH_ERR_INTERNAL_ERROR ; 
 int SSH_ERR_INVALID_FORMAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ssh*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ssh*) ; 
 int FUNC6 (struct ssh*,int /*<<< orphan*/ ) ; 

int
FUNC7(struct ssh *ssh)
{
	u_char *cookie;
	struct kex *kex = ssh->kex;
	int r;

	if (kex == NULL)
		return SSH_ERR_INTERNAL_ERROR;
	if (kex->flags & KEX_INIT_SENT)
		return 0;
	kex->done = 0;

	/* generate a random cookie */
	if (FUNC2(kex->my) < KEX_COOKIE_LEN)
		return SSH_ERR_INVALID_FORMAT;
	if ((cookie = FUNC3(kex->my)) == NULL)
		return SSH_ERR_INTERNAL_ERROR;
	FUNC0(cookie, KEX_COOKIE_LEN);

	if ((r = FUNC6(ssh, SSH2_MSG_KEXINIT)) != 0 ||
	    (r = FUNC4(ssh, kex->my)) != 0 ||
	    (r = FUNC5(ssh)) != 0)
		return r;
	FUNC1("SSH2_MSG_KEXINIT sent");
	kex->flags |= KEX_INIT_SENT;
	return 0;
}