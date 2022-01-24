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
 char* FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,void**) ; 
 size_t FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*,size_t) ; 

__attribute__((used)) static bool
FUNC3(const nvlist_t *limits, const char *prefix)
{
	const char *name;
	size_t prefixlen;
	void *cookie;

	if (limits == NULL)
		return (false);

	prefixlen = FUNC1(prefix);

	cookie = NULL;
	while ((name = FUNC0(limits, NULL, &cookie)) != NULL) {
		if (FUNC2(name, prefix, prefixlen) == 0)
			return (true);
	}

	return (false);
}