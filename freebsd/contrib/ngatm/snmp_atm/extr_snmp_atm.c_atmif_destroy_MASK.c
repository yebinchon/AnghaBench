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
struct atmif_reg {int /*<<< orphan*/  notify; int /*<<< orphan*/ * ifpreg; } ;
struct atmif_priv {int /*<<< orphan*/  notify; int /*<<< orphan*/ * ifpreg; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMIF_NOTIFY_DESTROY ; 
 struct atmif_reg* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct atmif_reg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  atmif_list ; 
 int /*<<< orphan*/  FUNC2 (struct atmif_reg*,int /*<<< orphan*/ ,uintptr_t) ; 
 int /*<<< orphan*/  FUNC3 (struct atmif_reg*) ; 
 int /*<<< orphan*/  FUNC4 (struct atmif_reg*) ; 
 int /*<<< orphan*/  last_change ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  this_tick ; 

__attribute__((used)) static void
FUNC6(struct atmif_priv *aif)
{
	struct atmif_reg *r0;

	FUNC2(aif, ATMIF_NOTIFY_DESTROY,
	    (uintptr_t)0);

	FUNC3(aif);

	if (aif->ifpreg != NULL)
		FUNC5(aif->ifpreg);

	while ((r0 = FUNC0(&aif->notify)) != NULL) {
		FUNC1(&aif->notify, r0, link);
		FUNC4(r0);
	}

	FUNC1(&atmif_list, aif, link);
	FUNC4(aif);

	last_change = this_tick;
}