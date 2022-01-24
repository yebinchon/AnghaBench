#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  zap_num_entries_mtx; } ;
struct TYPE_6__ {TYPE_1__ zap_f; scalar_t__ zap_ismicro; int /*<<< orphan*/  zap_rwlock; } ;
typedef  TYPE_2__ zap_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(void *dbu)
{
	zap_t *zap = dbu;

	FUNC3(&zap->zap_rwlock);

	if (zap->zap_ismicro)
		FUNC2(zap);
	else
		FUNC1(&zap->zap_f.zap_num_entries_mtx);

	FUNC0(zap, sizeof (zap_t));
}