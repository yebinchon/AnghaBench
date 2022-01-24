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
typedef  char* u_int32_t ;
struct ssh {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSH2_MSG_UNIMPLEMENTED ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*) ; 
 int FUNC1 (struct ssh*,char*) ; 
 int FUNC2 (struct ssh*) ; 
 int FUNC3 (struct ssh*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(int type, u_int32_t seq, struct ssh *ssh)
{
	int r;

	FUNC0("kex protocol error: type %d seq %u", type, seq);
	if ((r = FUNC3(ssh, SSH2_MSG_UNIMPLEMENTED)) != 0 ||
	    (r = FUNC1(ssh, seq)) != 0 ||
	    (r = FUNC2(ssh)) != 0)
		return r;
	return 0;
}