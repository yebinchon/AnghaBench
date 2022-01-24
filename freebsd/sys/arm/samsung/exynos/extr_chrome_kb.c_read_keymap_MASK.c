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
typedef  int /*<<< orphan*/  pcell_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 size_t FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(phandle_t node, const char *prop, pcell_t **keymap, size_t *len)
{

	if ((*len = FUNC1(node, prop)) <= 0) {
		return (ENXIO);
	}
	if ((*keymap = FUNC2(*len, M_DEVBUF, M_NOWAIT)) == NULL) {
		return (ENOMEM);
	}
	if (FUNC0(node, prop, *keymap, *len) != *len) {
		return (ENXIO);
	}
	return (0);
}