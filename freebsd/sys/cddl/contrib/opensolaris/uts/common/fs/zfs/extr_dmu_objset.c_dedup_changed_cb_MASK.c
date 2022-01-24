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
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_2__ {int os_dedup_checksum; int os_dedup_verify; int /*<<< orphan*/ * os_spa; } ;
typedef  TYPE_1__ objset_t ;
typedef  enum zio_checksum { ____Placeholder_zio_checksum } zio_checksum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ZIO_CHECKSUM_INHERIT ; 
 int ZIO_CHECKSUM_MASK ; 
 int /*<<< orphan*/  ZIO_CHECKSUM_OFF ; 
 int ZIO_CHECKSUM_VERIFY ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void *arg, uint64_t newval)
{
	objset_t *os = arg;
	spa_t *spa = os->os_spa;
	enum zio_checksum checksum;

	/*
	 * Inheritance should have been done by now.
	 */
	FUNC0(newval != ZIO_CHECKSUM_INHERIT);

	checksum = FUNC1(spa, newval, ZIO_CHECKSUM_OFF);

	os->os_dedup_checksum = checksum & ZIO_CHECKSUM_MASK;
	os->os_dedup_verify = !!(checksum & ZIO_CHECKSUM_VERIFY);
}