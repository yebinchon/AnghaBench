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
 int /*<<< orphan*/  SSH_CHANNEL_PORT_LISTENER ; 
 int /*<<< orphan*/  SSH_CHANNEL_UNIX_LISTENER ; 
 int FUNC0 (struct ssh*,int /*<<< orphan*/ ,struct Forward*,struct ForwardOptions*) ; 
 int FUNC1 (struct ssh*,int /*<<< orphan*/ ,struct Forward*,int /*<<< orphan*/ *,struct ForwardOptions*) ; 

int
FUNC2(struct ssh *ssh,
    struct Forward *fwd, struct ForwardOptions *fwd_opts)
{
	if (fwd->listen_path != NULL) {
		return FUNC0(ssh,
		    SSH_CHANNEL_UNIX_LISTENER, fwd, fwd_opts);
	} else {
		return FUNC1(ssh,
		    SSH_CHANNEL_PORT_LISTENER, fwd, NULL, fwd_opts);
	}
}