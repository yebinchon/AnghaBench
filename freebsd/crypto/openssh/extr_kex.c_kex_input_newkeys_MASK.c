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
typedef  int /*<<< orphan*/  u_int32_t ;
struct ssh {struct kex* kex; } ;
struct kex {int done; int /*<<< orphan*/ * name; int /*<<< orphan*/  flags; int /*<<< orphan*/  peer; } ;

/* Variables and functions */
 int /*<<< orphan*/  KEX_INIT_SENT ; 
 int /*<<< orphan*/  MODE_IN ; 
 int /*<<< orphan*/  SSH2_MSG_KEXINIT ; 
 int /*<<< orphan*/  SSH2_MSG_NEWKEYS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kex_input_kexinit ; 
 int /*<<< orphan*/  kex_protocol_error ; 
 int /*<<< orphan*/  FUNC2 (struct ssh*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ssh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ssh*) ; 

__attribute__((used)) static int
FUNC6(int type, u_int32_t seq, struct ssh *ssh)
{
	struct kex *kex = ssh->kex;
	int r;

	FUNC0("SSH2_MSG_NEWKEYS received");
	FUNC2(ssh, SSH2_MSG_NEWKEYS, &kex_protocol_error);
	FUNC2(ssh, SSH2_MSG_KEXINIT, &kex_input_kexinit);
	if ((r = FUNC5(ssh)) != 0)
		return r;
	if ((r = FUNC3(ssh, MODE_IN)) != 0)
		return r;
	kex->done = 1;
	FUNC4(kex->peer);
	/* sshbuf_reset(kex->my); */
	kex->flags &= ~KEX_INIT_SENT;
	FUNC1(kex->name);
	kex->name = NULL;
	return 0;
}