
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (size_t const) ;

__attribute__((used)) static __attribute__((malloc)) void *
_sodium_malloc(const size_t size)
{
    return malloc(size > (size_t) 0U ? size : (size_t) 1U);
}
