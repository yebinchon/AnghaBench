
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int EFAULT ;
 int * image ;
 int image_size ;
 int memcpy (int *,void const*,size_t) ;

int
test_copyin(void *arg, const void *from, uint64_t to, size_t size)
{

 to &= 0x7fffffff;
 if (to > image_size)
  return (EFAULT);
 if (to + size > image_size)
  size = image_size - to;
 memcpy(&image[to], from, size);
 return(0);
}
