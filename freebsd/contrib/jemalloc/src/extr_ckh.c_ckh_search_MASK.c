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
struct TYPE_6__ {TYPE_1__* tab; } ;
typedef  TYPE_2__ ckh_t ;
struct TYPE_5__ {scalar_t__ data; scalar_t__ key; } ;

/* Variables and functions */
 size_t SIZE_T_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (TYPE_2__*,void const*) ; 

bool
FUNC2(ckh_t *ckh, const void *searchkey, void **key, void **data) {
	size_t cell;

	FUNC0(ckh != NULL);

	cell = FUNC1(ckh, searchkey);
	if (cell != SIZE_T_MAX) {
		if (key != NULL) {
			*key = (void *)ckh->tab[cell].key;
		}
		if (data != NULL) {
			*data = (void *)ckh->tab[cell].data;
		}
		return false;
	}

	return true;
}