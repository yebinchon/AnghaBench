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
typedef  int /*<<< orphan*/  phandle_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char*,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC2(phandle_t node, void **name)
{
	int len;

	if ((len = FUNC0(node, "ti,hwmods", name)) > 0)
		return (len);
	return (FUNC0(FUNC1(node), "ti,hwmods", name));
}