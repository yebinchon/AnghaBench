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
struct timehist {int num; struct th_buck* buckets; } ;
struct th_buck {int dummy; } ;

/* Variables and functions */
 int NUM_BUCKETS_HIST ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct timehist*) ; 
 int /*<<< orphan*/  FUNC2 (struct timehist*) ; 

struct timehist* FUNC3(void)
{
	struct timehist* hist = (struct timehist*)FUNC0(1, 
		sizeof(struct timehist));
	if(!hist)
		return NULL;
	hist->num = NUM_BUCKETS_HIST;
	hist->buckets = (struct th_buck*)FUNC0(hist->num, 
		sizeof(struct th_buck));
	if(!hist->buckets) {
		FUNC2(hist);
		return NULL;
	}
	/* setup the buckets */
	FUNC1(hist);
	return hist;
}