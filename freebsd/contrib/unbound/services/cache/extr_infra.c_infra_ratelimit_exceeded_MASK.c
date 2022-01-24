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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  time_t ;
struct lruhash_entry {int /*<<< orphan*/  lock; int /*<<< orphan*/  data; } ;
struct infra_cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  infra_dp_ratelimit ; 
 struct lruhash_entry* FUNC0 (struct infra_cache*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct infra_cache*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct infra_cache* infra, uint8_t* name,
	size_t namelen, time_t timenow)
{
	struct lruhash_entry* entry;
	int lim, max;
	if(!infra_dp_ratelimit)
		return 0; /* not enabled */

	/* find ratelimit */
	lim = FUNC1(infra, name, namelen);
	if(!lim)
		return 0; /* disabled for this domain */

	/* find current rate */
	entry = FUNC0(infra, name, namelen, 0);
	if(!entry)
		return 0; /* not cached */
	max = FUNC2(entry->data, timenow);
	FUNC3(&entry->lock);

	return (max >= lim);
}