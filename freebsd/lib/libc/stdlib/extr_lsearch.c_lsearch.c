
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* lwork (void const*,void*,size_t*,size_t,int (*) (void const*,void const*),int) ;

void *lsearch(const void *key, void *base, size_t *nelp, size_t width,
    int (*compar)(const void *, const void *))
{

 return (lwork(key, base, nelp, width, compar, 1));
}
