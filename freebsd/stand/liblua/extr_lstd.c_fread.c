
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t offset; int fd; } ;
typedef TYPE_1__ FILE ;


 scalar_t__ read (int ,void*,size_t) ;

size_t
fread(void *ptr, size_t size, size_t count, FILE *stream)
{
 size_t r;

 if (stream == ((void*)0))
  return 0;
 r = (size_t)read(stream->fd, ptr, size * count);
 stream->offset += r;

 return (r);
}
