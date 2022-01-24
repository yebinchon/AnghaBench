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
struct ofw_compat_data {int /*<<< orphan*/ * ocd_str; } ;
typedef  int /*<<< orphan*/  phandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct ofw_compat_data* compat_data ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const struct ofw_compat_data *
FUNC2(void) 
{
	const struct ofw_compat_data *compat;
	phandle_t root;

	root = FUNC0("/");
	for (compat = compat_data; compat->ocd_str != NULL; compat++)
		if (FUNC1(root, compat->ocd_str))
			break;

	return (compat);
}