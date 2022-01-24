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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static inline void
FUNC2(uint8_t type)
{

	switch (FUNC0(type)) {
	case 0:
		FUNC1("RSVD\n");
		break;
	case 1:
		FUNC1("Master Abort\n");
		break;
	case 2:
		FUNC1("Target Abort\n");
		break;
	case 3:
		FUNC1("Data Err\n");
		break;
	default:
		break;
	}
}