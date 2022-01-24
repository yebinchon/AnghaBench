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
struct ForwardOptions {int dummy; } ;
struct Forward {int /*<<< orphan*/ * listen_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSH_CHANNEL_RPORT_LISTENER ; 
 int /*<<< orphan*/  SSH_CHANNEL_RUNIX_LISTENER ; 
 int FUNC0 (struct ssh*,int /*<<< orphan*/ ,struct Forward*,struct ForwardOptions*) ; 
 int FUNC1 (struct ssh*,int /*<<< orphan*/ ,struct Forward*,int*,struct ForwardOptions*) ; 
 int /*<<< orphan*/  FUNC2 (struct ssh*,struct Forward*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int
FUNC4(struct ssh *ssh, struct Forward *fwd,
    int *allocated_listen_port, struct ForwardOptions *fwd_opts)
{
	if (!FUNC2(ssh, fwd)) {
		FUNC3("port forwarding refused");
		return 0;
	}
	if (fwd->listen_path != NULL) {
		return FUNC0(ssh,
		    SSH_CHANNEL_RUNIX_LISTENER, fwd, fwd_opts);
	} else {
		return FUNC1(ssh,
		    SSH_CHANNEL_RPORT_LISTENER, fwd, allocated_listen_port,
		    fwd_opts);
	}
}