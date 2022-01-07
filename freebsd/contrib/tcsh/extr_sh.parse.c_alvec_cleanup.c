
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int USE (void*) ;
 int * alhistp ;
 int * alhistt ;
 int * alvec ;

__attribute__((used)) static void
alvec_cleanup(void *dummy)
{
    USE(dummy);
    alhistp = ((void*)0);
    alhistt = ((void*)0);
    alvec = ((void*)0);
}
