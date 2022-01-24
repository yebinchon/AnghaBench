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
struct TYPE_2__ {int /*<<< orphan*/ * parts; } ;

/* Variables and functions */
 int NDOSPART ; 
 TYPE_1__ mboot ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void
FUNC3(void)
{
	int	i;

	FUNC0();
	FUNC2("Information from DOS bootblock is:\n");
	for (i = 1; i <= NDOSPART; i++) {
		FUNC2("%d: ", i);
		FUNC1(&mboot.parts[i - 1]);
	}
}