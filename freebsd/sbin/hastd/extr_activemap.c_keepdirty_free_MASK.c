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
struct keepdirty {int dummy; } ;
struct activemap {scalar_t__ am_nkeepdirty; int /*<<< orphan*/  am_keepdirty; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct keepdirty* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct keepdirty*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct keepdirty*) ; 
 int /*<<< orphan*/  kd_next ; 

__attribute__((used)) static void
FUNC4(struct activemap *amp)
{
	struct keepdirty *kd;

	while ((kd = FUNC1(&amp->am_keepdirty)) != NULL) {
		FUNC2(&amp->am_keepdirty, kd, kd_next);
		amp->am_nkeepdirty--;
		FUNC3(kd);
	}
	FUNC0(amp->am_nkeepdirty == 0);
}