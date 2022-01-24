#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ssh {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  self; int /*<<< orphan*/  local_maxpacket; int /*<<< orphan*/  local_window; } ;
typedef  TYPE_1__ Channel ;

/* Variables and functions */
 int /*<<< orphan*/  SSH2_MSG_CHANNEL_OPEN ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct ssh*,char const*) ; 
 int FUNC3 (struct ssh*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ssh*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct ssh *ssh, const char *where, Channel *c, const char *type)
{
	int r;

	if ((r = FUNC4(ssh, SSH2_MSG_CHANNEL_OPEN)) != 0 ||
	    (r = FUNC2(ssh, type)) != 0 ||
	    (r = FUNC3(ssh, c->self)) != 0 ||
	    (r = FUNC3(ssh, c->local_window)) != 0 ||
	    (r = FUNC3(ssh, c->local_maxpacket)) != 0) {
		FUNC0("%s: channel %i: open: %s", where, c->self, FUNC1(r));
	}
}