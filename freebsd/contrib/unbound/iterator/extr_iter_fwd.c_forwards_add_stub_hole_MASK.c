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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct iter_forwards {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iter_forwards*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct iter_forwards*) ; 

int
FUNC2(struct iter_forwards* fwd, uint16_t c, uint8_t* nm)
{
	if(!FUNC0(fwd, c, nm)) {
		return 0;
	}
	FUNC1(fwd);
	return 1;
}