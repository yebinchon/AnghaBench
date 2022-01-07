
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
struct pt_section {scalar_t__ offset; scalar_t__ size; int memsize; int read; int unmap; struct pt_sec_posix_mapping* mapping; } ;
struct pt_sec_posix_mapping {int * end; int * begin; scalar_t__ size; int * base; } ;
typedef int off_t ;


 scalar_t__ INT_MAX ;
 int * MAP_FAILED ;
 int MAP_SHARED ;
 int PROT_READ ;
 scalar_t__ SIZE_MAX ;
 int _SC_PAGESIZE ;
 struct pt_sec_posix_mapping* malloc (int) ;
 int * mmap (int *,size_t,int ,int ,int,int ) ;
 int munmap (int *,size_t) ;
 int pt_sec_posix_memsize ;
 int pt_sec_posix_read ;
 int pt_sec_posix_unmap ;
 int pte_bad_config ;
 int pte_internal ;
 int pte_nomem ;
 long sysconf (int ) ;

int pt_sec_posix_map(struct pt_section *section, int fd)
{
 struct pt_sec_posix_mapping *mapping;
 uint64_t offset, size, adjustment;
 uint8_t *base;
 long page_size;
 int errcode;

 if (!section)
  return -pte_internal;

 offset = section->offset;
 size = section->size;

 page_size = sysconf(_SC_PAGESIZE);
 if (page_size < 0)
  return -pte_bad_config;

 adjustment = offset % (uint64_t) page_size;

 offset -= adjustment;
 size += adjustment;




 if (size < section->size)
  return -pte_internal;

 if (SIZE_MAX < size)
  return -pte_nomem;

 if (INT_MAX < offset)
  return -pte_nomem;

 base = mmap(((void*)0), (size_t) size, PROT_READ, MAP_SHARED, fd,
      (off_t) offset);
 if (base == MAP_FAILED)
  return -pte_nomem;

 mapping = malloc(sizeof(*mapping));
 if (!mapping) {
  errcode = -pte_nomem;
  goto out_map;
 }

 mapping->base = base;
 mapping->size = size;
 mapping->begin = base + adjustment;
 mapping->end = base + size;

 section->mapping = mapping;
 section->unmap = pt_sec_posix_unmap;
 section->read = pt_sec_posix_read;
 section->memsize = pt_sec_posix_memsize;

 return 0;

out_map:
 munmap(base, (size_t) size);
 return errcode;
}
