
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGABRT ;
 int SIGBUS ;
 int SIGSEGV ;
 unsigned int SIZE_MAX ;
 int assert (int ) ;
 int memset (void*,unsigned int,size_t) ;
 int printf (char*) ;
 unsigned int randombytes_uniform (unsigned int) ;
 int segv_handler (int ) ;
 int signal (int ,int (*) (int )) ;
 void* sodium_allocarray (unsigned int,unsigned int) ;
 int sodium_free (void*) ;
 void* sodium_malloc (size_t) ;
 int sodium_memzero (unsigned char*,unsigned int) ;
 int sodium_mprotect_noaccess (void*) ;
 int sodium_mprotect_readonly (void*) ;
 int sodium_mprotect_readwrite (void*) ;

int
main(void)
{
    void * buf;
    size_t size;
    unsigned int i;

    if (sodium_malloc(SIZE_MAX - 1U) != ((void*)0)) {
        return 1;
    }
    if (sodium_malloc(0U) == ((void*)0)) {
        return 1;
    }
    if (sodium_allocarray(SIZE_MAX / 2U + 1U, SIZE_MAX / 2U) != ((void*)0)) {
        return 1;
    }
    sodium_free(sodium_allocarray(0U, 0U));
    sodium_free(sodium_allocarray(0U, 1U));
    sodium_free(sodium_allocarray(1U, 0U));

    buf = sodium_allocarray(1000U, 50U);
    memset(buf, 0, 50000U);
    sodium_free(buf);

    sodium_free(sodium_malloc(0U));
    sodium_free(((void*)0));
    for (i = 0U; i < 10000U; i++) {
        size = 1U + randombytes_uniform(100000U);
        buf = sodium_malloc(size);
        assert(buf != ((void*)0));
        memset(buf, i, size);
        sodium_mprotect_noaccess(buf);
        sodium_free(buf);
    }
    printf("OK\n");
    size = 1U + randombytes_uniform(100000U);
    buf = sodium_malloc(size);
    assert(buf != ((void*)0));



    sodium_mprotect_readonly(buf);
    sodium_mprotect_readwrite(buf);
    segv_handler(0);

    return 0;
}
