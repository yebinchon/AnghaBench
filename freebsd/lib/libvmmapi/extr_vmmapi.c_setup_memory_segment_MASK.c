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
typedef  int /*<<< orphan*/  vm_paddr_t ;
struct vmctx {int memflags; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 char* MAP_FAILED ; 
 int MAP_FIXED ; 
 int MAP_NOCORE ; 
 int MAP_SHARED ; 
 int /*<<< orphan*/  PROT_ALL ; 
 int /*<<< orphan*/  PROT_RW ; 
 int VM_MEM_F_INCORE ; 
 int /*<<< orphan*/  VM_SYSMEM ; 
 char* FUNC0 (char*,size_t,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vmctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct vmctx *ctx, vm_paddr_t gpa, size_t len, char *base)
{
	char *ptr;
	int error, flags;

	/* Map 'len' bytes starting at 'gpa' in the guest address space */
	error = FUNC1(ctx, gpa, VM_SYSMEM, gpa, len, PROT_ALL);
	if (error)
		return (error);

	flags = MAP_SHARED | MAP_FIXED;
	if ((ctx->memflags & VM_MEM_F_INCORE) == 0)
		flags |= MAP_NOCORE;

	/* mmap into the process address space on the host */
	ptr = FUNC0(base + gpa, len, PROT_RW, flags, ctx->fd, gpa);
	if (ptr == MAP_FAILED)
		return (-1);

	return (0);
}