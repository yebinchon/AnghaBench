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
struct netent_data {int dummy; } ;

/* Variables and functions */
 struct netent_data* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct netent_data*) ; 

void
FUNC3(void)
{
	struct netent_data *ned;

	if ((ned = FUNC0()) == NULL)
		return;
	FUNC2(ned);
	FUNC1();
}