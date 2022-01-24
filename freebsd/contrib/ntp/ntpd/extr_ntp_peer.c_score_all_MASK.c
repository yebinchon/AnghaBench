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
struct peer {int flags; struct peer* p_link; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FLAG_PREEMPT ; 
 int /*<<< orphan*/  current_time ; 
 struct peer* peer_list ; 
 int FUNC1 (struct peer*) ; 

int
FUNC2(
	struct peer *peer	/* peer structure pointer */
	)
{
	struct peer *speer;
	int	temp, tamp;
	int	x;

	/*
	 * This routine finds the minimum score for all preemptible
	 * associations and returns > 0 if the association can be
	 * demobilized.
	 */
	tamp = FUNC1(peer);
	temp = 100;
	for (speer = peer_list; speer != NULL; speer = speer->p_link)
		if (speer->flags & FLAG_PREEMPT) {
			x = FUNC1(speer);
			if (x < temp)
				temp = x;
		}
	FUNC0(1, ("score_all: at %lu score %d min %d\n",
		    current_time, tamp, temp));

	if (tamp != temp)
		temp = 0;

	return temp;
}