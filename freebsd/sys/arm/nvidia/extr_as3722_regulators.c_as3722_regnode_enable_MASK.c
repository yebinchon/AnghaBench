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
struct regnode {int dummy; } ;
struct as3722_reg_sc {int enable_usec; } ;

/* Variables and functions */
 int FUNC0 (struct as3722_reg_sc*) ; 
 int FUNC1 (struct as3722_reg_sc*) ; 
 struct as3722_reg_sc* FUNC2 (struct regnode*) ; 

__attribute__((used)) static int
FUNC3(struct regnode *regnode, bool val, int *udelay)
{
	struct as3722_reg_sc *sc;
	int rv;

	sc = FUNC2(regnode);

	if (val)
		rv = FUNC1(sc);
	else
		rv = FUNC0(sc);
	*udelay = sc->enable_usec;
	return (rv);
}