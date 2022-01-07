
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned char* _base; int _size; } ;
struct TYPE_5__ {unsigned char* _ubuf; unsigned char* _p; TYPE_1__ _ub; } ;
typedef TYPE_2__ FILE ;


 int BUFSIZ ;
 int EOF ;
 unsigned char* malloc (size_t) ;
 int memcpy (void*,void*,size_t) ;
 unsigned char* reallocarray (unsigned char*,int,int) ;

__attribute__((used)) static int
__submore(FILE *fp)
{
 int i;
 unsigned char *p;

 if (fp->_ub._base == fp->_ubuf) {



  if ((p = malloc((size_t)BUFSIZ)) == ((void*)0))
   return (EOF);
  fp->_ub._base = p;
  fp->_ub._size = BUFSIZ;
  p += BUFSIZ - sizeof(fp->_ubuf);
  for (i = sizeof(fp->_ubuf); --i >= 0;)
   p[i] = fp->_ubuf[i];
  fp->_p = p;
  return (0);
 }
 i = fp->_ub._size;
 p = reallocarray(fp->_ub._base, i, 2);
 if (p == ((void*)0))
  return (EOF);

 (void)memcpy((void *)(p + i), (void *)p, (size_t)i);
 fp->_p = p + i;
 fp->_ub._base = p;
 fp->_ub._size = i * 2;
 return (0);
}
