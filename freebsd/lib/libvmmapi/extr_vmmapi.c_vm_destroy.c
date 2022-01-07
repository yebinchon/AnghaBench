
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {scalar_t__ fd; int name; } ;


 int DESTROY (int ) ;
 int assert (int ) ;
 int close (scalar_t__) ;
 int free (struct vmctx*) ;

void
vm_destroy(struct vmctx *vm)
{
 assert(vm != ((void*)0));

 if (vm->fd >= 0)
  close(vm->fd);
 DESTROY(vm->name);

 free(vm);
}
