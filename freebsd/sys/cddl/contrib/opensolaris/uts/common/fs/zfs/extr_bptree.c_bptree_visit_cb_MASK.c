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
typedef  int /*<<< orphan*/  zilog_t ;
typedef  int /*<<< orphan*/  zbookmark_phys_t ;
struct bptree_args {int (* ba_func ) (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ;TYPE_1__* ba_phys; scalar_t__ ba_free; int /*<<< orphan*/  ba_tx; int /*<<< orphan*/  ba_arg; } ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  dnode_phys_t ;
typedef  int /*<<< orphan*/  blkptr_t ;
struct TYPE_2__ {int /*<<< orphan*/  bt_uncomp; int /*<<< orphan*/  bt_comp; int /*<<< orphan*/  bt_bytes; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(spa_t *spa, zilog_t *zilog, const blkptr_t *bp,
    const zbookmark_phys_t *zb, const dnode_phys_t *dnp, void *arg)
{
	int err;
	struct bptree_args *ba = arg;

	if (bp == NULL || FUNC2(bp))
		return (0);

	err = ba->ba_func(ba->ba_arg, bp, ba->ba_tx);
	if (err == 0 && ba->ba_free) {
		ba->ba_phys->bt_bytes -= FUNC3(spa, bp);
		ba->ba_phys->bt_comp -= FUNC0(bp);
		ba->ba_phys->bt_uncomp -= FUNC1(bp);
	}
	return (err);
}