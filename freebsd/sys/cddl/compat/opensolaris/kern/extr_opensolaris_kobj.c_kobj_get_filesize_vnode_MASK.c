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
typedef  scalar_t__ uint64_t ;
struct vnode {int dummy; } ;
struct vattr {scalar_t__ va_size; } ;
struct _buf {struct vnode* ptr; } ;
struct TYPE_2__ {int /*<<< orphan*/  td_ucred; } ;

/* Variables and functions */
 int LK_RETRY ; 
 int LK_SHARED ; 
 int FUNC0 (struct vnode*,struct vattr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*,int /*<<< orphan*/ ) ; 
 TYPE_1__* curthread ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*,int) ; 

__attribute__((used)) static int
FUNC3(struct _buf *file, uint64_t *size)
{
	struct vnode *vp = file->ptr;
	struct vattr va;
	int error;

	FUNC2(vp, LK_SHARED | LK_RETRY);
	error = FUNC0(vp, &va, curthread->td_ucred);
	FUNC1(vp, 0);
	if (error == 0)
		*size = (uint64_t)va.va_size;
	return (error);
}