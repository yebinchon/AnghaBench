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

__attribute__((used)) static char *
FUNC1(phandle_t node)
{
	char *function;

	if (FUNC0(node, "function",
	    (void **)&function) != -1)
		return (function);
	if (FUNC0(node, "allwinner,function",
	    (void **)&function) != -1)
		return (function);

	return (NULL);
}