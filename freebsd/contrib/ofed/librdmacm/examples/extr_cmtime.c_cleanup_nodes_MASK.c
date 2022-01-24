#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  STEP_DESTROY ; 
 int connections ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* nodes ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void)
{
	int i;

	FUNC2("destroying id\n");
	FUNC5(STEP_DESTROY);
	for (i = 0; i < connections; i++) {
		FUNC4(&nodes[i], STEP_DESTROY);
		if (nodes[i].id)
			FUNC3(nodes[i].id);
		FUNC0(&nodes[i], STEP_DESTROY);
	}
	FUNC1(STEP_DESTROY);
}