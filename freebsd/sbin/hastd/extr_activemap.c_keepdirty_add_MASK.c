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
struct keepdirty {int kd_extent; } ;
struct activemap {scalar_t__ am_nkeepdirty; scalar_t__ am_nkeepdirty_limit; int /*<<< orphan*/  am_keepdirty; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct keepdirty*,int /*<<< orphan*/ ) ; 
 struct keepdirty* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct keepdirty*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kd_next ; 
 struct keepdirty* FUNC4 (struct activemap*,int) ; 
 struct keepdirty* FUNC5 (int) ; 
 int /*<<< orphan*/  skeepdirty ; 

__attribute__((used)) static bool
FUNC6(struct activemap *amp, int extent)
{
	struct keepdirty *kd;

	kd = FUNC4(amp, extent);
	if (kd != NULL) {
		/*
		 * Only move element at the beginning.
		 */
		FUNC3(&amp->am_keepdirty, kd, kd_next);
		FUNC1(&amp->am_keepdirty, kd, kd_next);
		return (false);
	}
	/*
	 * Add new element, but first remove the most unused one if
	 * we have too many.
	 */
	if (amp->am_nkeepdirty >= amp->am_nkeepdirty_limit) {
		kd = FUNC2(&amp->am_keepdirty, skeepdirty);
		FUNC0(kd != NULL);
		FUNC3(&amp->am_keepdirty, kd, kd_next);
		amp->am_nkeepdirty--;
		FUNC0(amp->am_nkeepdirty > 0);
	}
	if (kd == NULL)
		kd = FUNC5(sizeof(*kd));
	/* We can ignore allocation failure. */
	if (kd != NULL) {
		kd->kd_extent = extent;
		amp->am_nkeepdirty++;
		FUNC1(&amp->am_keepdirty, kd, kd_next);
	}

	return (true);
}