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
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int allowed_operations ; 
 char* FUNC0 (int /*<<< orphan*/  const*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * lastname ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,char const*) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC3(const nvlist_t *limits, const nvlist_t *request, int operation)
{
	const char *name;

	if ((allowed_operations & operation) == 0)
		return (false);

	name = FUNC0(request, "name", NULL);
	if (name == NULL)
		return (false);

	/* Fast path. */
	if (lastname != NULL && FUNC2(name, lastname) == 0)
		return (true);

	if (!FUNC1(limits, name))
		return (false);

	return (true);
}