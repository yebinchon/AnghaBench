#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ set; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ ipfw_nat64clat_cfg ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(const void *a, const void *b)
{
	ipfw_nat64clat_cfg *ca, *cb;

	ca = (ipfw_nat64clat_cfg *)a;
	cb = (ipfw_nat64clat_cfg *)b;

	if (ca->set > cb->set)
		return (1);
	else if (ca->set < cb->set)
		return (-1);
	return (FUNC0(ca->name, cb->name));
}