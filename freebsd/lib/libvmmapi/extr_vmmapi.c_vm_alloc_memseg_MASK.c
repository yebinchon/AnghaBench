#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vmctx {int /*<<< orphan*/  fd; } ;
struct vm_memseg {size_t len; int segid; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 int /*<<< orphan*/  VM_ALLOC_MEMSEG ; 
 int /*<<< orphan*/  FUNC0 (struct vm_memseg*) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_memseg*,int) ; 
 scalar_t__ FUNC2 (size_t,char const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_memseg*) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC5 (struct vmctx*,int,size_t*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(struct vmctx *ctx, int segid, size_t len, const char *name)
{
	struct vm_memseg memseg;
	size_t n;
	int error;

	/*
	 * If the memory segment has already been created then just return.
	 * This is the usual case for the SYSMEM segment created by userspace
	 * loaders like bhyveload(8).
	 */
	error = FUNC5(ctx, segid, &memseg.len, memseg.name,
	    sizeof(memseg.name));
	if (error)
		return (error);

	if (memseg.len != 0) {
		if (FUNC2(len, name, memseg.len, FUNC0(&memseg))) {
			errno = EINVAL;
			return (-1);
		} else {
			return (0);
		}
	}

	FUNC1(&memseg, sizeof(struct vm_memseg));
	memseg.segid = segid;
	memseg.len = len;
	if (name != NULL) {
		n = FUNC4(memseg.name, name, sizeof(memseg.name));
		if (n >= sizeof(memseg.name)) {
			errno = ENAMETOOLONG;
			return (-1);
		}
	}

	error = FUNC3(ctx->fd, VM_ALLOC_MEMSEG, &memseg);
	return (error);
}