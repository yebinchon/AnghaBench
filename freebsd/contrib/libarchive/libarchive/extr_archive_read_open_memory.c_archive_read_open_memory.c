
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;


 int archive_read_open_memory2 (struct archive*,void const*,size_t,size_t) ;

int
archive_read_open_memory(struct archive *a, const void *buff, size_t size)
{
 return archive_read_open_memory2(a, buff, size, size);
}
