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
typedef  int u16 ;
struct os_time {int sec; int usec; } ;
struct hostapd_neighbor_entry {int /*<<< orphan*/  lci_date; scalar_t__ stationary; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct os_time*) ; 
 int /*<<< orphan*/  FUNC1 (struct os_time*,int /*<<< orphan*/ *,struct os_time*) ; 

__attribute__((used)) static int FUNC2(struct hostapd_neighbor_entry *nr, u16 max_age)
{
	struct os_time curr, diff;
	unsigned long diff_l;

	if (nr->stationary || max_age == 0xffff)
		return 1;

	if (!max_age)
		return 0;

	if (FUNC0(&curr))
		return 0;

	FUNC1(&curr, &nr->lci_date, &diff);

	/* avoid overflow */
	if (diff.sec > 0xffff)
		return 0;

	/* LCI age is calculated in 10th of a second units. */
	diff_l = diff.sec * 10 + diff.usec / 100000;

	return max_age > diff_l;
}