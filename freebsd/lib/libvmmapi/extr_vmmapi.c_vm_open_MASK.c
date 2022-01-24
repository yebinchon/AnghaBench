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
struct vmctx {int fd; int lowmem_limit; char* name; scalar_t__ memflags; } ;

/* Variables and functions */
 int GB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct vmctx* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct vmctx*) ; 
 int FUNC5 (char*) ; 

struct vmctx *
FUNC6(const char *name)
{
	struct vmctx *vm;

	vm = FUNC1(sizeof(struct vmctx) + FUNC3(name) + 1);
	FUNC0(vm != NULL);

	vm->fd = -1;
	vm->memflags = 0;
	vm->lowmem_limit = 3 * GB;
	vm->name = (char *)(vm + 1);
	FUNC2(vm->name, name);

	if ((vm->fd = FUNC5(vm->name)) < 0)
		goto err;

	return (vm);
err:
	FUNC4(vm);
	return (NULL);
}