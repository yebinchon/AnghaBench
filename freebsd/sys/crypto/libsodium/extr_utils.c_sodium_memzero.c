
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int explicit_bzero (void*,size_t) ;

void
sodium_memzero(void *b, size_t n)
{
 explicit_bzero(b, n);
}
