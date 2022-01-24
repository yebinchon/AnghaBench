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
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_2__ {int /*<<< orphan*/  os_spa; int /*<<< orphan*/  os_compress; } ;
typedef  TYPE_1__ objset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ZIO_COMPRESS_INHERIT ; 
 int /*<<< orphan*/  ZIO_COMPRESS_ON ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void *arg, uint64_t newval)
{
	objset_t *os = arg;

	/*
	 * Inheritance and range checking should have been done by now.
	 */
	FUNC0(newval != ZIO_COMPRESS_INHERIT);

	os->os_compress = FUNC1(os->os_spa, newval,
	    ZIO_COMPRESS_ON);
}