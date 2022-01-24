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
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  bus_addr_t ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (char*) ; 
 int FUNC1 (int,char*,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(bus_addr_t *pa, bus_addr_t *size)
{
	phandle_t node;

	if ((node = FUNC0("/")) == -1)
		return (ENXIO);

	if ((node = FUNC1(node, "simple-bus", 1)) == 0)
		return (ENXIO);

	return FUNC2(node, 0, pa, size);
}