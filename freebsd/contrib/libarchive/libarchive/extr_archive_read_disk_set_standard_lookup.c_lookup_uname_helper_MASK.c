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
typedef  int /*<<< orphan*/  uid_t ;
struct passwd {int /*<<< orphan*/  pw_name; } ;
struct name_cache {int dummy; } ;
typedef  scalar_t__ id_t ;

/* Variables and functions */
 struct passwd* FUNC0 (int /*<<< orphan*/ ) ; 
 char const* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *
FUNC2(struct name_cache *cache, id_t id)
{
	struct passwd	*result;
	(void)cache; /* UNUSED */

	result = FUNC0((uid_t)id);

	if (result == NULL)
		return (NULL);

	return FUNC1(result->pw_name);
}