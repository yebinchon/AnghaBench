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
struct Forward {scalar_t__ allocated_port; scalar_t__ listen_port; int /*<<< orphan*/  listen_host; int /*<<< orphan*/ * listen_path; } ;

/* Variables and functions */
 int FUNC0 (struct ssh*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ssh*,int /*<<< orphan*/ ,scalar_t__) ; 

int
FUNC2(struct ssh *ssh, struct Forward *fwd)
{
	if (fwd->listen_path != NULL) {
		return FUNC0(ssh,
		    fwd->listen_path);
	} else {
		return FUNC1(ssh,
		    fwd->listen_host,
		    fwd->listen_port ? fwd->listen_port : fwd->allocated_port);
	}
}