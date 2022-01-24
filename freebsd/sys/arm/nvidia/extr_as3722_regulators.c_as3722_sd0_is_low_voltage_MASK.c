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
typedef  int uint8_t ;
struct as3722_reg_sc {int /*<<< orphan*/  base_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  AS3722_FUSE7 ; 
 int AS3722_FUSE7_SD0_LOW_VOLTAGE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static bool
FUNC1(struct as3722_reg_sc *sc)
{
	uint8_t val;
	int rv;

	rv = FUNC0(sc->base_sc, AS3722_FUSE7, &val);
	if (rv != 0)
		return (rv);
	return (val & AS3722_FUSE7_SD0_LOW_VOLTAGE ? true : false);
}