
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 int SYS_getrandom ;
 int assert (int) ;
 scalar_t__ errno ;
 int getrandom (void* const,size_t const,int ) ;
 int syscall (int ,void* const,int,int ) ;

__attribute__((used)) static int
_randombytes_linux_getrandom(void * const buf, const size_t size)
{
    int readnb;

    assert(size <= 256U);
    do {



        readnb = syscall(SYS_getrandom, buf, (int) size, 0);

    } while (readnb < 0 && (errno == EINTR || errno == EAGAIN));

    return (readnb == (int) size) - 1;
}
