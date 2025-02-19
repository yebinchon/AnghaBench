
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_prot_t ;
typedef int vm_ooffset_t ;
typedef int vm_offset_t ;
typedef int vm_object_t ;
typedef int vm_map_t ;
struct vnode {struct mount* v_mount; } ;
struct thread {int dummy; } ;
struct mount {int mnt_flag; } ;
struct linux_file {struct vnode* f_vnode; } ;
struct linux_cdev {int dummy; } ;
struct file_operations {int dummy; } ;
struct file {int f_flag; scalar_t__ f_data; } ;


 int EACCES ;
 int EOPNOTSUPP ;
 int FALSE ;
 int FREAD ;
 int FWRITE ;
 int MAP_SHARED ;
 int MNT_NOEXEC ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_NONE ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int linux_drop_fop (struct linux_cdev*) ;
 int linux_file_mmap_sub (struct thread*,int ,int,int*,int*,struct file*,int *,struct file_operations const*,int *) ;
 int linux_get_fop (struct linux_file*,struct file_operations const**,struct linux_cdev**) ;
 int vm_mmap_object (int ,int *,int ,int,int,int,int ,int ,int ,struct thread*) ;
 int vm_object_deallocate (int ) ;

__attribute__((used)) static int
linux_file_mmap(struct file *fp, vm_map_t map, vm_offset_t *addr, vm_size_t size,
    vm_prot_t prot, vm_prot_t cap_maxprot, int flags, vm_ooffset_t foff,
    struct thread *td)
{
 struct linux_file *filp;
 const struct file_operations *fop;
 struct linux_cdev *ldev;
 struct mount *mp;
 struct vnode *vp;
 vm_object_t object;
 vm_prot_t maxprot;
 int error;

 filp = (struct linux_file *)fp->f_data;

 vp = filp->f_vnode;
 if (vp == ((void*)0))
  return (EOPNOTSUPP);





 mp = vp->v_mount;
 if (mp != ((void*)0) && (mp->mnt_flag & MNT_NOEXEC) != 0) {
  maxprot = VM_PROT_NONE;
  if ((prot & VM_PROT_EXECUTE) != 0)
   return (EACCES);
 } else
  maxprot = VM_PROT_EXECUTE;
 if ((fp->f_flag & FREAD) != 0)
  maxprot |= VM_PROT_READ;
 else if ((prot & VM_PROT_READ) != 0)
  return (EACCES);
 if ((flags & MAP_SHARED) != 0) {
  if ((fp->f_flag & FWRITE) != 0)
   maxprot |= VM_PROT_WRITE;
  else if ((prot & VM_PROT_WRITE) != 0)
   return (EACCES);
 }
 maxprot &= cap_maxprot;

 linux_get_fop(filp, &fop, &ldev);
 error = linux_file_mmap_sub(td, size, prot, &maxprot, &flags, fp,
     &foff, fop, &object);
 if (error != 0)
  goto out;

 error = vm_mmap_object(map, addr, size, prot, maxprot, flags, object,
     foff, FALSE, td);
 if (error != 0)
  vm_object_deallocate(object);
out:
 linux_drop_fop(ldev);
 return (error);
}
