
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_7__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINTN ;
typedef int UINT32 ;
struct TYPE_9__ {int (* GetMemoryMap ) (int*,TYPE_1__*,int*,int*,int *) ;} ;
struct TYPE_8__ {scalar_t__ PhysicalStart; int NumberOfPages; scalar_t__ Type; } ;
typedef int EFI_STATUS ;
typedef scalar_t__ EFI_PHYSICAL_ADDRESS ;
typedef TYPE_1__ EFI_MEMORY_DESCRIPTOR ;


 TYPE_7__* BS ;
 int EFI_BUFFER_TOO_SMALL ;
 int EFI_ERROR (int ) ;
 int EFI_ERROR_CODE (int ) ;
 scalar_t__ EFI_PAGE_SHIFT ;
 int EFI_PAGE_SIZE ;
 scalar_t__ EfiConventionalMemory ;
 scalar_t__ EfiLoaderData ;
 scalar_t__ KERNEL_PHYSICAL_BASE ;
 TYPE_1__* NextMemoryDescriptor (TYPE_1__*,int) ;
 int free (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 int printf (char*,...) ;
 int stub1 (int*,TYPE_1__*,int*,int*,int *) ;

__attribute__((used)) static void
efi_verify_staging_size(unsigned long *nr_pages)
{
 UINTN sz;
 EFI_MEMORY_DESCRIPTOR *map = ((void*)0), *p;
 EFI_PHYSICAL_ADDRESS start, end;
 UINTN key, dsz;
 UINT32 dver;
 EFI_STATUS status;
 int i, ndesc;
 unsigned long available_pages = 0;

 sz = 0;

 for (;;) {
  status = BS->GetMemoryMap(&sz, map, &key, &dsz, &dver);
  if (!EFI_ERROR(status))
   break;

  if (status != EFI_BUFFER_TOO_SMALL) {
   printf("Can't read memory map: %lu\n",
       EFI_ERROR_CODE(status));
   goto out;
  }

  free(map);




  map = malloc(sz + (10 * dsz));
  if (map == ((void*)0)) {
   printf("Unable to allocate memory\n");
   goto out;
  }
 }

 ndesc = sz / dsz;
 for (i = 0, p = map; i < ndesc;
      i++, p = NextMemoryDescriptor(p, dsz)) {
  start = p->PhysicalStart;
  end = start + p->NumberOfPages * EFI_PAGE_SIZE;

  if (KERNEL_PHYSICAL_BASE < start ||
      KERNEL_PHYSICAL_BASE >= end)
   continue;

  available_pages = p->NumberOfPages -
   ((KERNEL_PHYSICAL_BASE - start) >> EFI_PAGE_SHIFT);
  break;
 }

 if (available_pages == 0) {
  printf("Can't find valid memory map for staging area!\n");
  goto out;
 }

 i++;
 p = NextMemoryDescriptor(p, dsz);

 for ( ; i < ndesc;
      i++, p = NextMemoryDescriptor(p, dsz)) {
  if (p->Type != EfiConventionalMemory &&
      p->Type != EfiLoaderData)
   break;

  if (p->PhysicalStart != end)
   break;

  end = p->PhysicalStart + p->NumberOfPages * EFI_PAGE_SIZE;

  available_pages += p->NumberOfPages;
 }

 if (*nr_pages > available_pages) {
  printf("Staging area's size is reduced: %ld -> %ld!\n",
      *nr_pages, available_pages);
  *nr_pages = available_pages;
 }
out:
 free(map);
}
