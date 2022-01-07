
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_3__ {int offset; int fd; } ;
typedef TYPE_1__ FILE ;


 int write (int ,void const*,size_t) ;

size_t
fwrite(const void *ptr, size_t size, size_t count, FILE *stream)
{
 ssize_t w;

 if (stream == ((void*)0) || ptr == ((void*)0))
  return (0);
 w = write(stream->fd, ptr, size * count);
 if (w == -1)
  return (0);

 stream->offset += w;
 return ((size_t)w);
}
