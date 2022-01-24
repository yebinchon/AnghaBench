#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_object_t ;
typedef  int /*<<< orphan*/  vm_map_entry_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct sgx_vm_handle {struct sgx_enclave* enclave; } ;
struct sgx_softc {int dummy; } ;
struct sgx_enclave {int /*<<< orphan*/ * object; } ;
struct TYPE_4__ {struct sgx_vm_handle* handle; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct sgx_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC2(struct sgx_softc *sc, uint64_t addr,
    struct sgx_enclave **encl)
{
	struct sgx_vm_handle *vmh;
	struct sgx_enclave *enclave;
	vm_map_entry_t entry;
	vm_object_t object;
	int ret;

	ret = FUNC0(sc, addr, &entry, &object);
	if (ret)
		return (ret);

	vmh = object->handle;
	if (vmh == NULL) {
		FUNC1(object);
		return (EINVAL);
	}

	enclave = vmh->enclave;
	if (enclave == NULL || enclave->object == NULL) {
		FUNC1(object);
		return (EINVAL);
	}

	*encl = enclave;

	return (0);
}