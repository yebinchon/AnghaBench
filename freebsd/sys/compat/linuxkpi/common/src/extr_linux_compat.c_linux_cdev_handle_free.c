
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; int * vm_file; } ;


 int fput (int *) ;
 int kfree (struct vm_area_struct*) ;
 int mmput (int ) ;

__attribute__((used)) static void
linux_cdev_handle_free(struct vm_area_struct *vmap)
{

 if (vmap->vm_file != ((void*)0))
  fput(vmap->vm_file);


 mmput(vmap->vm_mm);

 kfree(vmap);
}
