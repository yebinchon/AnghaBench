#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/  ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int /*<<< orphan*/  const*,int*) ; 

__attribute__((used)) static int
FUNC3(netdissect_options *ndo,
              const uint32_t *dp)
{
	int er;

	if (!(dp = FUNC2(ndo, dp, &er)))
		return (0);
	if (er)
		return (1);

	dp = FUNC1(ndo, dp, 0);
	if (dp == NULL)
		return (0);

	return (FUNC0(ndo, dp, ndo->ndo_vflag, 0) != NULL);
}