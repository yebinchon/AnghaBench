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
struct uni_status {int /*<<< orphan*/  unrec; int /*<<< orphan*/  epstate; int /*<<< orphan*/  epref; int /*<<< orphan*/  cause; int /*<<< orphan*/  callstate; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

void
FUNC1(struct uni_status *src, struct uni_status *dst)
{
	if(FUNC0(src->callstate))
		dst->callstate = src->callstate;
	if(FUNC0(src->cause))
		dst->cause = src->cause;
	if(FUNC0(src->epref))
		dst->epref = src->epref;
	if(FUNC0(src->epstate))
		dst->epstate = src->epstate;
	if(FUNC0(src->unrec))
		dst->unrec = src->unrec;
}