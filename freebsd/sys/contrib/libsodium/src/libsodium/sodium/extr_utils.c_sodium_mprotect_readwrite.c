
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _mprotect_readwrite ;
 int _sodium_mprotect (void*,int ) ;

int
sodium_mprotect_readwrite(void *ptr)
{
    return _sodium_mprotect(ptr, _mprotect_readwrite);
}
