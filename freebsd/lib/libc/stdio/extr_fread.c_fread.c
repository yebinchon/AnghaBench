
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int FLOCKFILE_CANCELSAFE (int *) ;
 int FUNLOCKFILE_CANCELSAFE () ;
 size_t __fread (void*,size_t,size_t,int *) ;

size_t
fread(void * __restrict buf, size_t size, size_t count, FILE * __restrict fp)
{
 size_t ret;

 FLOCKFILE_CANCELSAFE(fp);
 ret = __fread(buf, size, count, fp);
 FUNLOCKFILE_CANCELSAFE();
 return (ret);
}
