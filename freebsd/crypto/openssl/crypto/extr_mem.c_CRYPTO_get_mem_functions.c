
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void free_impl (void*,char const*,int) ;
 void* malloc_impl (size_t,char const*,int) ;
 void* realloc_impl (void*,size_t,char const*,int) ;

void CRYPTO_get_mem_functions(
        void *(**m)(size_t, const char *, int),
        void *(**r)(void *, size_t, const char *, int),
        void (**f)(void *, const char *, int))
{
    if (m != ((void*)0))
        *m = malloc_impl;
    if (r != ((void*)0))
        *r = realloc_impl;
    if (f != ((void*)0))
        *f = free_impl;
}
