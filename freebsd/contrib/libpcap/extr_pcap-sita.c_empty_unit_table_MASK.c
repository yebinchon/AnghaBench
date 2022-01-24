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
struct TYPE_2__ {int /*<<< orphan*/ * ip; } ;

/* Variables and functions */
 int MAX_CHASSIS ; 
 int MAX_GEOSLOT ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__** units ; 

__attribute__((used)) static void FUNC2(void) {
	int		chassis, geoslot;

	for (chassis = 0; chassis <= MAX_CHASSIS; chassis++) {
		for (geoslot = 0; geoslot <= MAX_GEOSLOT; geoslot++) {
			if (units[chassis][geoslot].ip != NULL) {
				FUNC1(units[chassis][geoslot].ip);			/* get rid of the malloc'ed space that holds the IP address */
				units[chassis][geoslot].ip = 0;				/* then set the pointer to NULL */
			}
			FUNC0(chassis, geoslot);
		}
	}
}