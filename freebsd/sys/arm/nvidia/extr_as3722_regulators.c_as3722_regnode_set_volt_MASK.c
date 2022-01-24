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
typedef  int /*<<< orphan*/  uint8_t ;
struct regnode {int dummy; } ;
struct as3722_reg_sc {TYPE_1__* def; } ;
struct TYPE_2__ {int /*<<< orphan*/  nranges; int /*<<< orphan*/  ranges; } ;

/* Variables and functions */
 int FUNC0 (struct as3722_reg_sc*,int /*<<< orphan*/ ) ; 
 struct as3722_reg_sc* FUNC1 (struct regnode*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct regnode *regnode, int min_uvolt, int max_uvolt,
    int *udelay)
{
	struct as3722_reg_sc *sc;
	uint8_t sel;
	int rv;

	sc = FUNC1(regnode);

	*udelay = 0;
	rv = FUNC2(sc->def->ranges, sc->def->nranges,
	    min_uvolt, max_uvolt, &sel);
	if (rv != 0)
		return (rv);
	rv = FUNC0(sc, sel);
	return (rv);

}