
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
typedef int vm_map_entry_t ;
typedef int uint64_t ;
struct sgx_vm_handle {struct sgx_enclave* enclave; } ;
struct sgx_softc {int dummy; } ;
struct sgx_enclave {int * object; } ;
struct TYPE_4__ {struct sgx_vm_handle* handle; } ;


 int EINVAL ;
 int sgx_mem_find (struct sgx_softc*,int ,int *,TYPE_1__**) ;
 int vm_object_deallocate (TYPE_1__*) ;

__attribute__((used)) static int
sgx_enclave_find(struct sgx_softc *sc, uint64_t addr,
    struct sgx_enclave **encl)
{
 struct sgx_vm_handle *vmh;
 struct sgx_enclave *enclave;
 vm_map_entry_t entry;
 vm_object_t object;
 int ret;

 ret = sgx_mem_find(sc, addr, &entry, &object);
 if (ret)
  return (ret);

 vmh = object->handle;
 if (vmh == ((void*)0)) {
  vm_object_deallocate(object);
  return (EINVAL);
 }

 enclave = vmh->enclave;
 if (enclave == ((void*)0) || enclave->object == ((void*)0)) {
  vm_object_deallocate(object);
  return (EINVAL);
 }

 *encl = enclave;

 return (0);
}
