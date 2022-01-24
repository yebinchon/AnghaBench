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
struct ohash {int dummy; } ;
struct macro_entry {int /*<<< orphan*/  pages; int /*<<< orphan*/  value; } ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  DBA_GROW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct macro_entry* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,size_t) ; 
 struct macro_entry* FUNC3 (struct ohash*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct ohash*,unsigned int,struct macro_entry*) ; 
 unsigned int FUNC5 (struct ohash*,char const*) ; 
 int FUNC6 (char const*) ; 

__attribute__((used)) static struct macro_entry *
FUNC7(struct ohash *macro, const char *value, int32_t np)
{
	struct macro_entry	*entry;
	size_t			 len;
	unsigned int		 slot;

	slot = FUNC5(macro, value);
	if ((entry = FUNC3(macro, slot)) == NULL) {
		len = FUNC6(value) + 1;
		entry = FUNC1(sizeof(*entry) + len);
		FUNC2(&entry->value, value, len);
		entry->pages = FUNC0(np, DBA_GROW);
		FUNC4(macro, slot, entry);
	}
	return entry;
}