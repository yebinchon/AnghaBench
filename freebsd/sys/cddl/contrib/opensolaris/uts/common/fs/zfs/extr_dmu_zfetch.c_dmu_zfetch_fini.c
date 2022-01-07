
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zstream_t ;
struct TYPE_4__ {int * zf_dnode; int zf_rwlock; int zf_stream; } ;
typedef TYPE_1__ zfetch_t ;


 int ASSERT (int) ;
 int RW_LOCK_HELD (int *) ;
 int RW_WRITER ;
 int dmu_zfetch_stream_remove (TYPE_1__*,int *) ;
 int list_destroy (int *) ;
 int * list_head (int *) ;
 int rw_destroy (int *) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;

void
dmu_zfetch_fini(zfetch_t *zf)
{
 zstream_t *zs;

 ASSERT(!RW_LOCK_HELD(&zf->zf_rwlock));

 rw_enter(&zf->zf_rwlock, RW_WRITER);
 while ((zs = list_head(&zf->zf_stream)) != ((void*)0))
  dmu_zfetch_stream_remove(zf, zs);
 rw_exit(&zf->zf_rwlock);
 list_destroy(&zf->zf_stream);
 rw_destroy(&zf->zf_rwlock);

 zf->zf_dnode = ((void*)0);
}
