
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_cache_destroy (int ) ;
 int sio_cache ;

void
scan_fini(void)
{
 kmem_cache_destroy(sio_cache);
}
