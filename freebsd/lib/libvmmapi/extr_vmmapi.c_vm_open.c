
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {int fd; int lowmem_limit; char* name; scalar_t__ memflags; } ;


 int GB ;
 int assert (int ) ;
 struct vmctx* malloc (scalar_t__) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;
 int vm_destroy (struct vmctx*) ;
 int vm_device_open (char*) ;

struct vmctx *
vm_open(const char *name)
{
 struct vmctx *vm;

 vm = malloc(sizeof(struct vmctx) + strlen(name) + 1);
 assert(vm != ((void*)0));

 vm->fd = -1;
 vm->memflags = 0;
 vm->lowmem_limit = 3 * GB;
 vm->name = (char *)(vm + 1);
 strcpy(vm->name, name);

 if ((vm->fd = vm_device_open(vm->name)) < 0)
  goto err;

 return (vm);
err:
 vm_destroy(vm);
 return (((void*)0));
}
