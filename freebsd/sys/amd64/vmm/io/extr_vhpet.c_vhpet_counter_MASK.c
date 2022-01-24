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
typedef  int uint32_t ;
struct vhpet {int countbase; int countbase_sbt; int freq_sbt; } ;
typedef  int sbintime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 (struct vhpet*) ; 

__attribute__((used)) static uint32_t
FUNC3(struct vhpet *vhpet, sbintime_t *nowptr)
{
	uint32_t val;
	sbintime_t now, delta;

	val = vhpet->countbase;
	if (FUNC2(vhpet)) {
		now = FUNC1();
		delta = now - vhpet->countbase_sbt;
		FUNC0(delta >= 0, ("vhpet_counter: uptime went backwards: "
		    "%#lx to %#lx", vhpet->countbase_sbt, now));
		val += delta / vhpet->freq_sbt;
		if (nowptr != NULL)
			*nowptr = now;
	} else {
		/*
		 * The sbinuptime corresponding to the 'countbase' is
		 * meaningless when the counter is disabled. Make sure
		 * that the caller doesn't want to use it.
		 */
		FUNC0(nowptr == NULL, ("vhpet_counter: nowptr must be NULL"));
	}
	return (val);
}