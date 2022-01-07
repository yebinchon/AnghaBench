
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct pt_section {scalar_t__ offset; scalar_t__ size; int memsize; int read; int unmap; struct pt_sec_windows_mapping* mapping; } ;
struct pt_sec_windows_mapping {int fd; int * end; int * begin; int * base; scalar_t__ mh; } ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileMapping (scalar_t__,int *,int ,int ,int ,int *) ;
 int FILE_MAP_READ ;
 int * MapViewOfFile (scalar_t__,int ,scalar_t__,scalar_t__,scalar_t__) ;
 int PAGE_READONLY ;
 int UnmapViewOfFile (int *) ;
 scalar_t__ _get_osfhandle (int) ;
 scalar_t__ granularity () ;
 struct pt_sec_windows_mapping* malloc (int) ;
 int pt_sec_windows_memsize ;
 int pt_sec_windows_read ;
 int pt_sec_windows_unmap ;
 int pte_bad_image ;
 int pte_internal ;
 int pte_nomem ;

int pt_sec_windows_map(struct pt_section *section, int fd)
{
 struct pt_sec_windows_mapping *mapping;
 uint64_t offset, size, adjustment;
 HANDLE fh, mh;
 DWORD dsize;
 uint8_t *base;
 int errcode;

 if (!section)
  return -pte_internal;

 offset = section->offset;
 size = section->size;

 adjustment = offset % granularity();

 offset -= adjustment;
 size += adjustment;




 if (size < section->size)
  return -pte_internal;

 dsize = (DWORD) size;
 if ((uint64_t) dsize != size)
  return -pte_internal;

 fh = (HANDLE) _get_osfhandle(fd);

 mh = CreateFileMapping(fh, ((void*)0), PAGE_READONLY, 0, 0, ((void*)0));
 if (!mh)
  return -pte_bad_image;

 base = MapViewOfFile(mh, FILE_MAP_READ, (DWORD) (offset >> 32),
        (DWORD) (uint32_t) offset, dsize);
 if (!base) {
  errcode = -pte_bad_image;
  goto out_mh;
 }

 mapping = malloc(sizeof(*mapping));
 if (!mapping) {
  errcode = -pte_nomem;
  goto out_map;
 }

 mapping->fd = fd;
 mapping->mh = mh;
 mapping->base = base;
 mapping->begin = base + adjustment;
 mapping->end = base + size;

 section->mapping = mapping;
 section->unmap = pt_sec_windows_unmap;
 section->read = pt_sec_windows_read;
 section->memsize = pt_sec_windows_memsize;

 return 0;

out_map:
 UnmapViewOfFile(base);

out_mh:
 CloseHandle(mh);
 return errcode;
}
