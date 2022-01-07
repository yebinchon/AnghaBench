
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spa_t ;
typedef int int32_t ;
typedef int arc_buf_t ;
typedef int arc_buf_hdr_t ;
typedef int arc_buf_contents_t ;


 int ASSERT (int) ;
 int B_FALSE ;
 int HDR_LOCK (int *) ;
 int MUTEX_HELD (int ) ;
 int VERIFY0 (int ) ;
 int ZIO_COMPRESS_OFF ;
 int arc_buf_alloc_impl (int *,void*,int ,int ,int **) ;
 int arc_buf_thaw (int *) ;
 int * arc_hdr_alloc (int ,int ,int ,int ,int ) ;
 int spa_load_guid (int *) ;

arc_buf_t *
arc_alloc_buf(spa_t *spa, void *tag, arc_buf_contents_t type, int32_t size)
{
 arc_buf_hdr_t *hdr = arc_hdr_alloc(spa_load_guid(spa), size, size,
     ZIO_COMPRESS_OFF, type);
 ASSERT(!MUTEX_HELD(HDR_LOCK(hdr)));

 arc_buf_t *buf = ((void*)0);
 VERIFY0(arc_buf_alloc_impl(hdr, tag, B_FALSE, B_FALSE, &buf));
 arc_buf_thaw(buf);

 return (buf);
}
