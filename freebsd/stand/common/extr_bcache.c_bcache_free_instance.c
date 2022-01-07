
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcache {struct bcache* bcache_data; struct bcache* bcache_ctl; } ;


 int free (struct bcache*) ;

__attribute__((used)) static void
bcache_free_instance(struct bcache *bc)
{
    if (bc != ((void*)0)) {
 free(bc->bcache_ctl);
 free(bc->bcache_data);
 free(bc);
    }
}
