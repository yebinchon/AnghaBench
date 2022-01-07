
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cuse_vm_allocation {void* ptr; scalar_t__ size; } ;
struct cuse_alloc_info {int alloc_nr; } ;
typedef int info ;


 int CUSE_ALLOC_UNIT_MAX ;
 int CUSE_IOCTL_FREE_MEMORY ;
 int CUSE_LOCK () ;
 int CUSE_UNLOCK () ;
 int DPRINTF (char*,int ) ;
 struct cuse_vm_allocation* a_cuse ;
 int errno ;
 scalar_t__ f_cuse ;
 int ioctl (scalar_t__,int ,struct cuse_alloc_info*) ;
 int memset (struct cuse_alloc_info*,int ,int) ;
 int munmap (void*,scalar_t__) ;

void
cuse_vmfree(void *ptr)
{
 struct cuse_vm_allocation temp;
 struct cuse_alloc_info info;
 int error;
 int n;

 if (f_cuse < 0)
  return;

 CUSE_LOCK();
 for (n = 0; n != CUSE_ALLOC_UNIT_MAX; n++) {
  if (a_cuse[n].ptr != ptr)
   continue;

  temp = a_cuse[n];

  CUSE_UNLOCK();

  munmap(temp.ptr, temp.size);

  memset(&info, 0, sizeof(info));

  info.alloc_nr = n;

  error = ioctl(f_cuse, CUSE_IOCTL_FREE_MEMORY, &info);

  if (error != 0) {

   DPRINTF("Freeing memory failed: %d\n", errno);
  }
  CUSE_LOCK();

  a_cuse[n].ptr = ((void*)0);
  a_cuse[n].size = 0;

  break;
 }
 CUSE_UNLOCK();
}
