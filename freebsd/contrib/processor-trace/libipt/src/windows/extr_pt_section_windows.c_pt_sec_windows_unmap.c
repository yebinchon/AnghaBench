
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_section {int * memsize; int * read; int * unmap; struct pt_sec_windows_mapping* mapping; } ;
struct pt_sec_windows_mapping {int fd; int mh; int begin; } ;


 int CloseHandle (int ) ;
 int UnmapViewOfFile (int ) ;
 int _close (int ) ;
 int free (struct pt_sec_windows_mapping*) ;
 int pte_internal ;

int pt_sec_windows_unmap(struct pt_section *section)
{
 struct pt_sec_windows_mapping *mapping;

 if (!section)
  return -pte_internal;

 mapping = section->mapping;
 if (!mapping || !section->unmap || !section->read || !section->memsize)
  return -pte_internal;

 section->mapping = ((void*)0);
 section->unmap = ((void*)0);
 section->read = ((void*)0);
 section->memsize = ((void*)0);

 UnmapViewOfFile(mapping->begin);
 CloseHandle(mapping->mh);
 _close(mapping->fd);
 free(mapping);

 return 0;
}
