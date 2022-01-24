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
struct al_udma {int /*<<< orphan*/  name; } ;
typedef  enum al_udma_state { ____Placeholder_al_udma_state } al_udma_state ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int UDMA_DISABLE ; 
 int UDMA_IDLE ; 
 int UDMA_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct al_udma*) ; 
 int FUNC2 (struct al_udma*,int) ; 
 int* al_udma_states_name ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct al_udma *dma, enum al_udma_state new_state)
{
	enum al_udma_state state;
	enum al_udma_state expected_state = new_state;
	int count = 1000;
	int rc;

	rc = FUNC2(dma, new_state);
	if (rc != 0) {
		FUNC3("[%s] warn: failed to change state, error %d\n", dma->name, rc);
		return rc;
	}

	if ((new_state == UDMA_NORMAL) || (new_state == UDMA_DISABLE))
		expected_state = UDMA_IDLE;

	do {
		state = FUNC1(dma);
		if (state == expected_state)
			break;
		FUNC0(1);
		if (count-- == 0) {
			FUNC3("[%s] warn: dma state didn't change to %s\n",
				 dma->name, al_udma_states_name[new_state]);
			return -ETIMEDOUT;
		}
	} while (1);
	return 0;
}