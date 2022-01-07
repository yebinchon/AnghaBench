
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSYS ;
 int MADV_DODUMP ;
 scalar_t__ VirtualUnlock (void* const,size_t const) ;
 int errno ;
 int madvise (void* const,size_t const,int ) ;
 int munlock (void* const,size_t const) ;
 int sodium_memzero (void* const,size_t const) ;

int
sodium_munlock(void *const addr, const size_t len)
{
    sodium_memzero(addr, len);
    errno = ENOSYS;
    return -1;

}
