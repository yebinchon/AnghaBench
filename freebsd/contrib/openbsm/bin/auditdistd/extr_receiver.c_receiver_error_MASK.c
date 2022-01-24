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
struct TYPE_2__ {int adh_trail_fd; int /*<<< orphan*/  adh_trail_name; int /*<<< orphan*/  adh_directory; } ;

/* Variables and functions */
 int ADIST_ERROR_WRONG_ORDER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* adhost ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(void)
{

	/* We should have opened trail file. */
	if (adhost->adh_trail_fd == -1) {
		FUNC3("Sender send read error, but file is not open.");
		return (ADIST_ERROR_WRONG_ORDER);
	}

	FUNC0(FUNC1(adhost->adh_trail_fd) == 0);
	adhost->adh_trail_fd = -1;

	FUNC2(1, "Closed file \"%s/%s\".", adhost->adh_directory,
	    adhost->adh_trail_name);

	return (0);
}