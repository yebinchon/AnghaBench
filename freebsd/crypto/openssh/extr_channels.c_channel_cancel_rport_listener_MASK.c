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
struct Forward {int /*<<< orphan*/  listen_port; int /*<<< orphan*/  listen_host; int /*<<< orphan*/ * listen_path; } ;

/* Variables and functions */
 int FUNC0 (struct ssh*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ssh*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC2(struct ssh *ssh, struct Forward *fwd)
{
	if (fwd->listen_path != NULL) {
		return FUNC0(ssh,
		    fwd->listen_path);
	} else {
		return FUNC1(ssh,
		    fwd->listen_host, fwd->listen_port);
	}
}