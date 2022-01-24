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
struct vtdmap {int /*<<< orphan*/  cap; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static int
FUNC2(struct vtdmap *vtdmap)
{
	int nd;

	nd = FUNC0(vtdmap->cap);

	switch (nd) {
	case 0:
		return (16);
	case 1:
		return (64);
	case 2:
		return (256);
	case 3:
		return (1024);
	case 4:
		return (4 * 1024);
	case 5:
		return (16 * 1024);
	case 6:
		return (64 * 1024);
	default:
		FUNC1("vtd_max_domains: invalid value of nd (0x%0x)", nd);
	}
}