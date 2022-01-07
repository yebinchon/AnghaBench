
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alloc_cache {void (* cleanup ) (void*) ;void* cleanup_arg; } ;



void
alloc_set_id_cleanup(struct alloc_cache* alloc, void (*cleanup)(void*),
        void* arg)
{
 alloc->cleanup = cleanup;
 alloc->cleanup_arg = arg;
}
