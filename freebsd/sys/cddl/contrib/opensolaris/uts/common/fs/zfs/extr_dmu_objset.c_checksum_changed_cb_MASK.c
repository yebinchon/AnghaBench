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
typedef  scalar_t__ uint64_t ;
struct TYPE_2__ {int /*<<< orphan*/  os_checksum; } ;
typedef  TYPE_1__ objset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ZIO_CHECKSUM_INHERIT ; 
 int /*<<< orphan*/  ZIO_CHECKSUM_ON_VALUE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void *arg, uint64_t newval)
{
	objset_t *os = arg;

	/*
	 * Inheritance should have been done by now.
	 */
	FUNC0(newval != ZIO_CHECKSUM_INHERIT);

	os->os_checksum = FUNC1(newval, ZIO_CHECKSUM_ON_VALUE);
}