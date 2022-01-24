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
struct amd64_set_pkru {unsigned long len; void* addr; } ;
typedef  int /*<<< orphan*/  a64pkru ;

/* Variables and functions */
 int /*<<< orphan*/  X86_CLEAR_PKRU ; 
 int /*<<< orphan*/  FUNC0 (struct amd64_set_pkru*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct amd64_set_pkru*) ; 

int
FUNC2(void *addr, unsigned long len)
{
	struct amd64_set_pkru a64pkru;

	FUNC0(&a64pkru, 0, sizeof(a64pkru));
	a64pkru.addr = addr;
	a64pkru.len = len;
	return (FUNC1(X86_CLEAR_PKRU, &a64pkru));
}