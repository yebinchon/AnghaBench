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
struct minimal_symbol {int dummy; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ KERNBASE ; 
 scalar_t__ FUNC0 (struct minimal_symbol*) ; 
 struct minimal_symbol* FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static CORE_ADDR
FUNC2 (void)
{
	static CORE_ADDR kernbase;
	struct minimal_symbol *sym;

	if (kernbase == 0) {
		sym = FUNC1 ("kernbase", NULL, NULL);
		if (sym == NULL) {
			kernbase = KERNBASE;
		} else {
			kernbase = FUNC0 (sym);
		}
	}
	return kernbase;
}