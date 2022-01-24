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
struct gctl_req {unsigned int narg; struct gctl_req* error; struct gctl_req* arg; struct gctl_req* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gctl_req*) ; 
 struct gctl_req* nomemmsg ; 

void
FUNC1(struct gctl_req *req)
{
	unsigned int i;

	if (req == NULL)
		return;
	for (i = 0; i < req->narg; i++) {
		if (req->arg[i].name != NULL)
			FUNC0(req->arg[i].name);
	}
	FUNC0(req->arg);
	if (req->error != NULL && req->error != nomemmsg)
		FUNC0(req->error);
	FUNC0(req);
}