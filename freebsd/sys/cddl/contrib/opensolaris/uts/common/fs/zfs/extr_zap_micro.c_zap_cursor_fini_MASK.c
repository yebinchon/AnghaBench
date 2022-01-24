#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * zc_objset; TYPE_3__* zc_leaf; TYPE_2__* zc_zap; } ;
typedef  TYPE_1__ zap_cursor_t ;
struct TYPE_7__ {int /*<<< orphan*/  l_rwlock; } ;
struct TYPE_6__ {int /*<<< orphan*/  zap_rwlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 

void
FUNC3(zap_cursor_t *zc)
{
	if (zc->zc_zap) {
		FUNC0(&zc->zc_zap->zap_rwlock, RW_READER);
		FUNC2(zc->zc_zap, NULL);
		zc->zc_zap = NULL;
	}
	if (zc->zc_leaf) {
		FUNC0(&zc->zc_leaf->l_rwlock, RW_READER);
		FUNC1(zc->zc_leaf);
		zc->zc_leaf = NULL;
	}
	zc->zc_objset = NULL;
}