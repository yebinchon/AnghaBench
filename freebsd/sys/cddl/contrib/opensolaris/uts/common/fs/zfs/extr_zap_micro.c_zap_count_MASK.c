#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  zap_num_entries; } ;
struct TYPE_7__ {TYPE_1__ zap_m; int /*<<< orphan*/  zap_ismicro; } ;
typedef  TYPE_2__ zap_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 

int
FUNC3(objset_t *os, uint64_t zapobj, uint64_t *count)
{
	zap_t *zap;

	int err =
	    FUNC1(os, zapobj, NULL, RW_READER, TRUE, FALSE, FTAG, &zap);
	if (err != 0)
		return (err);
	if (!zap->zap_ismicro) {
		err = FUNC0(zap, count);
	} else {
		*count = zap->zap_m.zap_num_entries;
	}
	FUNC2(zap, FTAG);
	return (err);
}