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
typedef  int vm_pindex_t ;
typedef  int /*<<< orphan*/  vm_object_t ;
typedef  int uint64_t ;
struct sgx_softc {int dummy; } ;
struct sgx_enclave {int /*<<< orphan*/  object; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int SGX_VA_PAGES_OFFS ; 
 int SGX_VA_PAGE_SLOTS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sgx_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct sgx_softc *sc,
    struct sgx_enclave *enclave,
    uint64_t addr)
{
	vm_pindex_t pidx;
	uint64_t va_page_idx;
	uint64_t idx;
	vm_object_t object;
	int va_slot;
	int ret;

	object = enclave->object;

	FUNC1(object);

	pidx = FUNC0(addr);

	va_slot = pidx % SGX_VA_PAGE_SLOTS;
	va_page_idx = pidx / SGX_VA_PAGE_SLOTS;
	idx = - SGX_VA_PAGES_OFFS - va_page_idx;

	ret = FUNC2(sc, object, idx);

	return (ret);
}