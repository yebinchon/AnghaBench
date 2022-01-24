#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct interface_info {TYPE_1__* client; } ;
struct TYPE_2__ {int /*<<< orphan*/  state; int /*<<< orphan*/ * alias; int /*<<< orphan*/ * active; } ;

/* Variables and functions */
 int /*<<< orphan*/  S_INIT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	struct interface_info *_ifi = arg;

	/*
	 * Clear existing state.
	 */
	if (_ifi->client->active != NULL) {
		FUNC1("EXPIRE", NULL);
		FUNC2("old_",
		    _ifi->client->active);
		if (_ifi->client->alias)
			FUNC2("alias_",
				_ifi->client->alias);
		FUNC0();
	}
	_ifi->client->state = S_INIT;
}