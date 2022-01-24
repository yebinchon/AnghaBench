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
struct TYPE_2__ {int /*<<< orphan*/  zn_dva; } ;
typedef  TYPE_1__ zil_bp_node_t ;
typedef  int /*<<< orphan*/  dva_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(const void *x1, const void *x2)
{
	const dva_t *dva1 = &((zil_bp_node_t *)x1)->zn_dva;
	const dva_t *dva2 = &((zil_bp_node_t *)x2)->zn_dva;

	int cmp = FUNC0(FUNC2(dva1), FUNC2(dva2));
	if (FUNC3(cmp))
		return (cmp);

	return (FUNC0(FUNC1(dva1), FUNC1(dva2)));
}