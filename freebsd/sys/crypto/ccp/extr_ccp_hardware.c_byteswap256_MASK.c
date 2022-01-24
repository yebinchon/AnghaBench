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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(uint64_t *buffer)
{
	uint64_t t;

	t = FUNC0(buffer[3]);
	buffer[3] = FUNC0(buffer[0]);
	buffer[0] = t;

	t = FUNC0(buffer[2]);
	buffer[2] = FUNC0(buffer[1]);
	buffer[1] = t;
}