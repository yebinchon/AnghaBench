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
struct macro_entry {int /*<<< orphan*/  pages; } ;
struct dba_array {int dummy; } ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dba_array*) ; 
 int /*<<< orphan*/  FUNC1 (struct dba_array*,int /*<<< orphan*/ ) ; 
 struct macro_entry* FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 

void
FUNC3(struct dba_array *macros, int32_t im, const char *value,
    struct dba_array *page)
{
	struct macro_entry	*entry;

	if (*value == '\0')
		return;
	entry = FUNC2(FUNC1(macros, im), value, 1);
	FUNC0(entry->pages, page);
}