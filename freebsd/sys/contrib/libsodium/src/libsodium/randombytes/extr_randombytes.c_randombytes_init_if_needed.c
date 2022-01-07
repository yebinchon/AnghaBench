
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * RANDOMBYTES_DEFAULT_IMPLEMENTATION ;
 int * implementation ;
 int randombytes_stir () ;

__attribute__((used)) static void
randombytes_init_if_needed(void)
{
    if (implementation == ((void*)0)) {
        implementation = RANDOMBYTES_DEFAULT_IMPLEMENTATION;
        randombytes_stir();
    }
}
