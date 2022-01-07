
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __cvmx_shared_end ;
 int __cvmx_shared_start ;
 int munmap (int *,unsigned long) ;

__attribute__((used)) static void shutdown_cvmx_shared(void)
{
    unsigned long shared_size = &__cvmx_shared_end - &__cvmx_shared_start;
    if (shared_size)
        munmap(&__cvmx_shared_start, shared_size);
}
