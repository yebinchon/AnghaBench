
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct cuse_alloc_info {int page_count; int alloc_nr; } ;
typedef int info ;
struct TYPE_2__ {int size; int * ptr; } ;


 int CUSE_ALLOC_PAGES_MAX ;
 int CUSE_ALLOC_UNIT_MAX ;
 int CUSE_IOCTL_ALLOC_MEMORY ;
 int CUSE_IOCTL_FREE_MEMORY ;
 int CUSE_LOCK () ;
 int CUSE_UNLOCK () ;
 scalar_t__ EBUSY ;
 void* MAP_FAILED ;
 int MAP_SHARED ;
 int PAGE_SIZE ;
 int PROT_READ ;
 int PROT_WRITE ;
 TYPE_1__* a_cuse ;
 scalar_t__ errno ;
 scalar_t__ f_cuse ;
 int howmany (int,int) ;
 int ioctl (scalar_t__,int ,struct cuse_alloc_info*) ;
 int memset (struct cuse_alloc_info*,int ,int) ;
 void* mmap (int *,int,int,int ,scalar_t__,int) ;

void *
cuse_vmalloc(int size)
{
 struct cuse_alloc_info info;
 void *ptr;
 int error;
 int n;

 if (f_cuse < 0)
  return (((void*)0));

 memset(&info, 0, sizeof(info));

 if (size < 1)
  return (((void*)0));

 info.page_count = howmany(size, PAGE_SIZE);

 CUSE_LOCK();
 for (n = 0; n != CUSE_ALLOC_UNIT_MAX; n++) {

  if (a_cuse[n].ptr != ((void*)0))
   continue;

  a_cuse[n].ptr = ((uint8_t *)1);
  a_cuse[n].size = 0;

  CUSE_UNLOCK();

  info.alloc_nr = n;

  error = ioctl(f_cuse, CUSE_IOCTL_ALLOC_MEMORY, &info);

  if (error) {

   CUSE_LOCK();

   a_cuse[n].ptr = ((void*)0);

   if (errno == EBUSY)
    continue;
   else
    break;
  }
  ptr = mmap(((void*)0), info.page_count * PAGE_SIZE,
      PROT_READ | PROT_WRITE,
      MAP_SHARED, f_cuse, CUSE_ALLOC_PAGES_MAX *
      PAGE_SIZE * n);

  if (ptr == MAP_FAILED) {

   error = ioctl(f_cuse, CUSE_IOCTL_FREE_MEMORY, &info);

   if (error) {

   }
   CUSE_LOCK();

   a_cuse[n].ptr = ((void*)0);

   break;
  }
  CUSE_LOCK();
  a_cuse[n].ptr = ptr;
  a_cuse[n].size = size;
  CUSE_UNLOCK();

  return (ptr);
 }
 CUSE_UNLOCK();
 return (((void*)0));
}
