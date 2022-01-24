#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ssh {TYPE_1__* kex; } ;
struct TYPE_2__ {scalar_t__ ext_info_c; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSH2_MSG_NEWKEYS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  kex_input_newkeys ; 
 int /*<<< orphan*/  FUNC1 (struct ssh*) ; 
 int FUNC2 (struct ssh*) ; 
 int /*<<< orphan*/  FUNC3 (struct ssh*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ssh*) ; 
 int FUNC5 (struct ssh*,int /*<<< orphan*/ ) ; 

int
FUNC6(struct ssh *ssh)
{
	int r;

	FUNC1(ssh);
	if ((r = FUNC5(ssh, SSH2_MSG_NEWKEYS)) != 0 ||
	    (r = FUNC4(ssh)) != 0)
		return r;
	FUNC0("SSH2_MSG_NEWKEYS sent");
	FUNC0("expecting SSH2_MSG_NEWKEYS");
	FUNC3(ssh, SSH2_MSG_NEWKEYS, &kex_input_newkeys);
	if (ssh->kex->ext_info_c)
		if ((r = FUNC2(ssh)) != 0)
			return r;
	return 0;
}