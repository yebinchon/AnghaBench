
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct _buf {int ptr; } ;


 int ENOENT ;
 int MODINFO_SIZE ;
 void* preload_search_info (int ,int ) ;

__attribute__((used)) static int
kobj_get_filesize_loader(struct _buf *file, uint64_t *size)
{
 void *ptr;

 ptr = preload_search_info(file->ptr, MODINFO_SIZE);
 if (ptr == ((void*)0))
  return (ENOENT);
 *size = (uint64_t)*(size_t *)ptr;
 return (0);
}
