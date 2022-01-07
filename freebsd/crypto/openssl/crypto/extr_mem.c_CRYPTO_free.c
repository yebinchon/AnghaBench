
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_mem_debug_free (void*,int,char const*,int) ;
 int INCREMENT (int ) ;
 scalar_t__ call_malloc_debug ;
 int free (void*) ;
 int free_count ;
 void free_impl (void*,char const*,int) ;

void CRYPTO_free(void *str, const char *file, int line)
{
    INCREMENT(free_count);
    if (free_impl != ((void*)0) && free_impl != &CRYPTO_free) {
        free_impl(str, file, line);
        return;
    }


    if (call_malloc_debug) {
        CRYPTO_mem_debug_free(str, 0, file, line);
        free(str);
        CRYPTO_mem_debug_free(str, 1, file, line);
    } else {
        free(str);
    }



}
