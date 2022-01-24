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
struct TYPE_2__ {int /*<<< orphan*/  shared; } ;
struct futex {TYPE_1__ f_key; int /*<<< orphan*/  f_refcount; int /*<<< orphan*/  f_uaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct futex*) ; 
 int /*<<< orphan*/  FUNC1 (struct futex*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sys_futex ; 

__attribute__((used)) static inline void
FUNC3(struct futex *f)
{

	FUNC2(sys_futex, "futex_unlock uaddr %p ref %d shared %d",
	    f->f_uaddr, f->f_refcount, f->f_key.shared);
	FUNC0(f);
	FUNC1(f);
}