
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmspace {int dummy; } ;
struct vm {int sockets; int maxcpus; int threads; int cores; int rendezvous_mtx; struct vmspace* vmspace; int name; } ;


 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int MTX_DEF ;
 int M_VM ;
 int M_WAITOK ;
 int M_ZERO ;
 struct vmspace* VMSPACE_ALLOC (int ,int ) ;
 int VM_MAXCPU ;
 int VM_MAXUSER_ADDRESS ;
 scalar_t__ VM_MAX_NAMELEN ;
 int cores_per_package ;
 struct vm* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int ,int ) ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;
 int threads_per_core ;
 int vm_init (struct vm*,int) ;
 int vmm_initialized ;

int
vm_create(const char *name, struct vm **retvm)
{
 struct vm *vm;
 struct vmspace *vmspace;





 if (!vmm_initialized)
  return (ENXIO);

 if (name == ((void*)0) || strlen(name) >= VM_MAX_NAMELEN)
  return (EINVAL);

 vmspace = VMSPACE_ALLOC(0, VM_MAXUSER_ADDRESS);
 if (vmspace == ((void*)0))
  return (ENOMEM);

 vm = malloc(sizeof(struct vm), M_VM, M_WAITOK | M_ZERO);
 strcpy(vm->name, name);
 vm->vmspace = vmspace;
 mtx_init(&vm->rendezvous_mtx, "vm rendezvous lock", 0, MTX_DEF);

 vm->sockets = 1;
 vm->cores = cores_per_package;
 vm->threads = threads_per_core;
 vm->maxcpus = VM_MAXCPU;

 vm_init(vm, 1);

 *retvm = vm;
 return (0);
}
