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
struct timehist {struct timehist* buckets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timehist*) ; 

void FUNC1(struct timehist* hist)
{
	if(!hist)
		return;
	FUNC0(hist->buckets);
	FUNC0(hist);
}