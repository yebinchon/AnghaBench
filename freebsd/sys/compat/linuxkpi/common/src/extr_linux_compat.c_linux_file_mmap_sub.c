
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_prot_t ;
typedef int vm_ooffset_t ;
typedef int vm_object_t ;
struct thread {int dummy; } ;
struct file_operations {int dummy; } ;
struct file {int dummy; } ;


 int EACCES ;
 int EINVAL ;
 int MAP_COPY ;
 int MAP_PRIVATE ;
 int VM_PROT_WRITE ;
 int linux_file_mmap_single (struct file*,struct file_operations const*,int *,int ,int *,int,struct thread*) ;

__attribute__((used)) static int
linux_file_mmap_sub(struct thread *td, vm_size_t objsize, vm_prot_t prot,
    vm_prot_t *maxprotp, int *flagsp, struct file *fp,
    vm_ooffset_t *foff, const struct file_operations *fop, vm_object_t *objp)
{




 if ((*maxprotp & VM_PROT_WRITE) == 0 &&
     (prot & VM_PROT_WRITE) != 0)
  return (EACCES);
 if ((*flagsp & (MAP_PRIVATE | MAP_COPY)) != 0)
  return (EINVAL);

 return (linux_file_mmap_single(fp, fop, foff, objsize, objp,
     (int)prot, td));
}
