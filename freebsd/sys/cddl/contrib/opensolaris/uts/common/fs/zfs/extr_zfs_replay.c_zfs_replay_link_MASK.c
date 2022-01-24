#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  znode_t ;
typedef  int /*<<< orphan*/  zfsvfs_t ;
struct componentname {char* cn_nameptr; int /*<<< orphan*/  cn_flags; int /*<<< orphan*/  cn_thread; int /*<<< orphan*/  cn_cred; } ;
struct TYPE_4__ {int lrc_txtype; } ;
struct TYPE_5__ {TYPE_1__ lr_common; int /*<<< orphan*/  lr_link_obj; int /*<<< orphan*/  lr_doid; } ;
typedef  TYPE_2__ lr_link_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int FIGNORECASE ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int /*<<< orphan*/  SAVENAME ; 
 int TX_CI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct componentname*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  kcred ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int
FUNC7(void *arg1, void *arg2, boolean_t byteswap)
{
	zfsvfs_t *zfsvfs = arg1;
	lr_link_t *lr = arg2;
	char *name = (char *)(lr + 1);	/* name follows lr_link_t */
	znode_t *dzp, *zp;
	struct componentname cn;
	int error;
	int vflg = 0;

	if (byteswap)
		FUNC4(lr, sizeof (*lr));

	if ((error = FUNC6(zfsvfs, lr->lr_doid, &dzp)) != 0)
		return (error);

	if ((error = FUNC6(zfsvfs, lr->lr_link_obj, &zp)) != 0) {
		FUNC0(FUNC3(dzp));
		return (error);
	}

	if (lr->lr_common.lrc_txtype & TX_CI)
		vflg |= FIGNORECASE;

	cn.cn_nameptr = name;
	cn.cn_cred = kcred;
	cn.cn_thread = curthread;
	cn.cn_flags = SAVENAME;

	FUNC5(FUNC3(dzp), LK_EXCLUSIVE | LK_RETRY);
	FUNC5(FUNC3(zp), LK_EXCLUSIVE | LK_RETRY);
	error = FUNC1(FUNC3(dzp), FUNC3(zp), &cn /*,vflg*/);
	FUNC2(FUNC3(zp), 0);
	FUNC2(FUNC3(dzp), 0);

	FUNC0(FUNC3(zp));
	FUNC0(FUNC3(dzp));

	return (error);
}