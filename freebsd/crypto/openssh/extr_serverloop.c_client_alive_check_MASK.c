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
struct ssh {int dummy; } ;
typedef  int /*<<< orphan*/  remote_id ;
struct TYPE_2__ {scalar_t__ client_alive_count_max; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSH2_MSG_GLOBAL_REQUEST ; 
 int FUNC0 (struct ssh*) ; 
 int /*<<< orphan*/  FUNC1 (struct ssh*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 TYPE_1__ options ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ssh*,char*,int) ; 

__attribute__((used)) static void
FUNC10(struct ssh *ssh)
{
	int channel_id;
	char remote_id[512];

	/* timeout, check to see how many we have had */
	if (FUNC4() > options.client_alive_count_max) {
		FUNC9(ssh, remote_id, sizeof(remote_id));
		FUNC3("Timeout, client not responding from %s", remote_id);
		FUNC2(255);
	}

	/*
	 * send a bogus global/channel request with "wantreply",
	 * we should get back a failure
	 */
	if ((channel_id = FUNC0(ssh)) == -1) {
		FUNC8(SSH2_MSG_GLOBAL_REQUEST);
		FUNC6("keepalive@openssh.com");
		FUNC5(1);	/* boolean: want reply */
	} else {
		FUNC1(ssh, channel_id,
		    "keepalive@openssh.com", 1);
	}
	FUNC7();
}