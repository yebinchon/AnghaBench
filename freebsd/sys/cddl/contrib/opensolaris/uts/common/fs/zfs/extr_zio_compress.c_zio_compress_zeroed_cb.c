
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;



__attribute__((used)) static int
zio_compress_zeroed_cb(void *data, size_t len, void *private)
{
 uint64_t *end = (uint64_t *)((char *)data + len);
 for (uint64_t *word = (uint64_t *)data; word < end; word++)
  if (*word != 0)
   return (1);

 return (0);
}
