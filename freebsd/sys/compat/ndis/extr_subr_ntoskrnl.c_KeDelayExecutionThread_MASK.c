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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  ktimer ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 

__attribute__((used)) static int32_t
FUNC4(uint8_t wait_mode, uint8_t alertable, int64_t *interval)
{
	ktimer                  timer;

	if (wait_mode != 0)
		FUNC3("invalid wait_mode %d", wait_mode);

	FUNC0(&timer);
	FUNC1(&timer, *interval, NULL);
	FUNC2(&timer, 0, 0, alertable, NULL);

	return STATUS_SUCCESS;
}