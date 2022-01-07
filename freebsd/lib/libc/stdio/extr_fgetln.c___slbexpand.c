
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t _size; void* _base; } ;
struct TYPE_5__ {TYPE_1__ _lb; } ;
typedef TYPE_2__ FILE ;


 int ENOMEM ;
 size_t INT_MAX ;
 int errno ;
 void* realloc (void*,size_t) ;

int
__slbexpand(FILE *fp, size_t newsize)
{
 void *p;

 if (fp->_lb._size >= newsize)
  return (0);
 if (newsize > INT_MAX) {
  errno = ENOMEM;
  return (-1);
 }
 if ((p = realloc(fp->_lb._base, newsize)) == ((void*)0))
  return (-1);
 fp->_lb._base = p;
 fp->_lb._size = newsize;
 return (0);
}
