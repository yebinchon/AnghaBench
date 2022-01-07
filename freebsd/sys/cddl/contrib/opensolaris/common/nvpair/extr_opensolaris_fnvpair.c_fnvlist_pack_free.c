
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 int kmem_free (char*,size_t) ;

void
fnvlist_pack_free(char *pack, size_t size)
{



 free(pack);

}
