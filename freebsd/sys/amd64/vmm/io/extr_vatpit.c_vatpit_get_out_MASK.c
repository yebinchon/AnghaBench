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
typedef  int /*<<< orphan*/  uint64_t ;
struct vatpit {struct channel* channel; } ;
struct channel {int mode; int /*<<< orphan*/  initial; } ;

/* Variables and functions */
#define  TIMER_INTTC 128 
 int /*<<< orphan*/  FUNC0 (struct vatpit*,struct channel*) ; 

__attribute__((used)) static int
FUNC1(struct vatpit *vatpit, int channel)
{
	struct channel *c;
	uint64_t delta_ticks;
	int out;

	c = &vatpit->channel[channel];

	switch (c->mode) {
	case TIMER_INTTC:
		delta_ticks = FUNC0(vatpit, c);
		out = (delta_ticks >= c->initial);
		break;
	default:
		out = 0;
		break;
	}

	return (out);
}