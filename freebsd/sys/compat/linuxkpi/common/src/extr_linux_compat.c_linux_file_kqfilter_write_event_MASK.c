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
struct TYPE_2__ {int /*<<< orphan*/  m; } ;
struct linux_file {int f_kqflags; TYPE_1__ f_kqlock; } ;
struct knote {struct linux_file* kn_hook; } ;

/* Variables and functions */
 int LINUX_KQ_FLAG_NEED_WRITE ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(struct knote *kn, long hint)
{
	struct linux_file *filp = kn->kn_hook;

	FUNC0(&filp->f_kqlock.m, MA_OWNED);

	return ((filp->f_kqflags & LINUX_KQ_FLAG_NEED_WRITE) ? 1 : 0);
}