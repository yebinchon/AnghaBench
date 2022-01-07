
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_file {int * _file; int * f_shmem; } ;


 int _fdrop (int *,int ) ;
 int curthread ;
 int kfree (struct linux_file*) ;
 int vm_object_deallocate (int *) ;

void
linux_file_free(struct linux_file *filp)
{
 if (filp->_file == ((void*)0)) {
  if (filp->f_shmem != ((void*)0))
   vm_object_deallocate(filp->f_shmem);
  kfree(filp);
 } else {




  _fdrop(filp->_file, curthread);
 }
}
