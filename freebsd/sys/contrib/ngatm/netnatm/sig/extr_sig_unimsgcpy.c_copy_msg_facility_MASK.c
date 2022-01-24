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
struct uni_facility {int /*<<< orphan*/  unrec; int /*<<< orphan*/  notify; int /*<<< orphan*/  calling; int /*<<< orphan*/  calledsub; int /*<<< orphan*/  called; int /*<<< orphan*/  facility; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

void
FUNC1(struct uni_facility *src, struct uni_facility *dst)
{
	if(FUNC0(src->facility))
		dst->facility = src->facility;
	if(FUNC0(src->called))
		dst->called = src->called;
	if(FUNC0(src->calledsub))
		dst->calledsub = src->calledsub;
	if(FUNC0(src->calling))
		dst->calling = src->calling;
	if(FUNC0(src->notify))
		dst->notify = src->notify;
	if(FUNC0(src->unrec))
		dst->unrec = src->unrec;
}