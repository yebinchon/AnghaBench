
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;


 int read_open_memory_internal (struct archive*,void const*,size_t,size_t,int) ;

int
read_open_memory(struct archive *a, const void *buff, size_t size, size_t read_size)
{
 return read_open_memory_internal(a, buff, size, read_size, 2);
}
