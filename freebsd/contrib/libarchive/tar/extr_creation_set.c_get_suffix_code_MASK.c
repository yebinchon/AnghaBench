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
struct suffix_code_t {char const* form; int /*<<< orphan*/ * suffix; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static const char *
FUNC1(const struct suffix_code_t *tbl, const char *suffix)
{
	int i;

	if (suffix == NULL)
		return (NULL);
	for (i = 0; tbl[i].suffix != NULL; i++) {
		if (FUNC0(tbl[i].suffix, suffix) == 0)
			return (tbl[i].form);
	}
	return (NULL);
}