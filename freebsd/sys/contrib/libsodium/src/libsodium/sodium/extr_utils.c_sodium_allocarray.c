
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 scalar_t__ SIZE_MAX ;
 int errno ;
 void* sodium_malloc (size_t) ;

__attribute__((malloc)) void *
sodium_allocarray(size_t count, size_t size)
{
    if (count > (size_t) 0U && size >= (size_t) SIZE_MAX / count) {
        errno = ENOMEM;
        return ((void*)0);
    }
    return sodium_malloc(count * size);
}
