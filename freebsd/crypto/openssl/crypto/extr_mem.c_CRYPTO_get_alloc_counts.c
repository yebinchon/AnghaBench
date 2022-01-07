
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_count ;
 int malloc_count ;
 int realloc_count ;
 int tsan_load (int *) ;

void CRYPTO_get_alloc_counts(int *mcount, int *rcount, int *fcount)
{
    if (mcount != ((void*)0))
        *mcount = tsan_load(&malloc_count);
    if (rcount != ((void*)0))
        *rcount = tsan_load(&realloc_count);
    if (fcount != ((void*)0))
        *fcount = tsan_load(&free_count);
}
