
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmmdev_softc {int vm; } ;
struct vm_memseg {int segid; int len; int name; } ;


 int M_VMMDEV ;
 int M_WAITOK ;
 scalar_t__ VM_MEMSEG_NAME (struct vm_memseg*) ;
 int copystr (int ,char*,int,int *) ;
 int devmem_create_cdev (int ,int ,char*) ;
 int free (char*,int ) ;
 char* malloc (int,int ,int ) ;
 int vm_alloc_memseg (int ,int ,int ,int) ;
 int vm_free_memseg (int ,int ) ;
 int vm_name (int ) ;

__attribute__((used)) static int
alloc_memseg(struct vmmdev_softc *sc, struct vm_memseg *mseg)
{
 char *name;
 int error;
 bool sysmem;

 error = 0;
 name = ((void*)0);
 sysmem = 1;





 if (VM_MEMSEG_NAME(mseg)) {
  sysmem = 0;
  name = malloc(sizeof(mseg->name), M_VMMDEV, M_WAITOK);
  error = copystr(mseg->name, name, sizeof(mseg->name), ((void*)0));
  if (error)
   goto done;
 }

 error = vm_alloc_memseg(sc->vm, mseg->segid, mseg->len, sysmem);
 if (error)
  goto done;

 if (VM_MEMSEG_NAME(mseg)) {
  error = devmem_create_cdev(vm_name(sc->vm), mseg->segid, name);
  if (error)
   vm_free_memseg(sc->vm, mseg->segid);
  else
   name = ((void*)0);
 }
done:
 free(name, M_VMMDEV);
 return (error);
}
