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
struct val_neg_cache {size_t nsec3_max_iter; int max; int /*<<< orphan*/  lock; int /*<<< orphan*/  tree; } ;
struct config_file {int neg_cache_size; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct val_neg_cache*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  val_neg_zone_compare ; 

struct val_neg_cache* FUNC5(struct config_file* cfg, size_t maxiter)
{
	struct val_neg_cache* neg = (struct val_neg_cache*)FUNC0(1, 
		sizeof(*neg));
	if(!neg) {
		FUNC3("Could not create neg cache: out of memory");
		return NULL;
	}
	neg->nsec3_max_iter = maxiter;
	neg->max = 1024*1024; /* 1 M is thousands of entries */
	if(cfg) neg->max = cfg->neg_cache_size;
	FUNC4(&neg->tree, &val_neg_zone_compare);
	FUNC1(&neg->lock);
	FUNC2(&neg->lock, neg, sizeof(*neg));
	return neg;
}