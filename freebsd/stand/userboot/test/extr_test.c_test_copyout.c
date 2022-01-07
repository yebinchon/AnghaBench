
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int EFAULT ;
 int * image ;
 int image_size ;
 int memcpy (void*,int *,size_t) ;

int
test_copyout(void *arg, uint64_t from, void *to, size_t size)
{

 from &= 0x7fffffff;
 if (from > image_size)
  return (EFAULT);
 if (from + size > image_size)
  size = image_size - from;
 memcpy(to, &image[from], size);
 return(0);
}
