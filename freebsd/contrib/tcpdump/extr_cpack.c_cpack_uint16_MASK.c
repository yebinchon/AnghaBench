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
struct cpack_state {int /*<<< orphan*/  const* c_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (struct cpack_state*,int) ; 

int
FUNC2(struct cpack_state *cs, uint16_t *u)
{
	const uint8_t *next;

	if ((next = FUNC1(cs, sizeof(*u))) == NULL)
		return -1;

	*u = FUNC0(next);

	/* Move pointer past the uint16_t. */
	cs->c_next = next + sizeof(*u);
	return 0;
}