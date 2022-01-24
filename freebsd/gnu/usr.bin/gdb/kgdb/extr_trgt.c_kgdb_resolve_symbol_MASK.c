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
typedef  int /*<<< orphan*/  kvaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct minimal_symbol*) ; 
 struct minimal_symbol* FUNC1 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(const char *name, kvaddr_t *kva)
{
	struct minimal_symbol *ms;

	ms = FUNC1 (name, NULL, NULL);
	if (ms == NULL)
		return (1);

	*kva = FUNC0 (ms);
	return (0);
}