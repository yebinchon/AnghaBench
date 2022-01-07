
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lzh; int * active_phandle; } ;
typedef TYPE_1__ libbe_handle_t ;


 int free (TYPE_1__*) ;
 int libzfs_fini (int ) ;
 int zpool_close (int *) ;

void
libbe_close(libbe_handle_t *lbh)
{

 if (lbh->active_phandle != ((void*)0))
  zpool_close(lbh->active_phandle);
 libzfs_fini(lbh->lzh);
 free(lbh);
}
