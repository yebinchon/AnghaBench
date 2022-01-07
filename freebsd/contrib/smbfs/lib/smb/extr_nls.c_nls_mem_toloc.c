
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ iconv_t ;


 int iconv (scalar_t__,char**,size_t*,char**,size_t*) ;
 void* memcpy (void*,void*,int) ;
 scalar_t__ nls_toloc ;

void *
nls_mem_toloc(void *dst, void *src, int size)
{
 return memcpy(dst, src, size);

}
