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
typedef  scalar_t__ uint32_t ;
struct vpmtmr {int baseuptime; int freq_sbt; scalar_t__ baseval; } ;
struct vm {int dummy; } ;
typedef  int sbintime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 () ; 
 struct vpmtmr* FUNC2 (struct vm*) ; 

int
FUNC3(struct vm *vm, int vcpuid, bool in, int port, int bytes,
    uint32_t *val)
{
	struct vpmtmr *vpmtmr;
	sbintime_t now, delta;

	if (!in || bytes != 4)
		return (-1);

	vpmtmr = FUNC2(vm);

	/*
	 * No locking needed because 'baseuptime' and 'baseval' are
	 * written only during initialization.
	 */
	now = FUNC1();
	delta = now - vpmtmr->baseuptime;
	FUNC0(delta >= 0, ("vpmtmr_handler: uptime went backwards: "
	    "%#lx to %#lx", vpmtmr->baseuptime, now));
	*val = vpmtmr->baseval + delta / vpmtmr->freq_sbt;

	return (0);
}