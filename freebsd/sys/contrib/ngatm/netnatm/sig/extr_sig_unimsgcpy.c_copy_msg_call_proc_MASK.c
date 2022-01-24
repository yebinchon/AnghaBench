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
struct uni_call_proc {int /*<<< orphan*/  unrec; int /*<<< orphan*/  notify; int /*<<< orphan*/  epref; int /*<<< orphan*/  connid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

void
FUNC1(struct uni_call_proc *src, struct uni_call_proc *dst)
{
	if(FUNC0(src->connid))
		dst->connid = src->connid;
	if(FUNC0(src->epref))
		dst->epref = src->epref;
	if(FUNC0(src->notify))
		dst->notify = src->notify;
	if(FUNC0(src->unrec))
		dst->unrec = src->unrec;
}