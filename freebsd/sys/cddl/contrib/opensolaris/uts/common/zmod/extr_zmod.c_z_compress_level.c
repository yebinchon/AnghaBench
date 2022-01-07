
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int zs ;
struct TYPE_6__ {size_t avail_in; size_t avail_out; size_t total_out; int zfree; int zalloc; void* next_out; int * next_in; } ;
typedef TYPE_1__ z_stream ;
typedef int uchar_t ;


 int Z_BUF_ERROR ;
 int Z_FINISH ;
 int Z_OK ;
 int Z_STREAM_END ;
 int bzero (TYPE_1__*,int) ;
 int deflate (TYPE_1__*,int ) ;
 int deflateEnd (TYPE_1__*) ;
 int deflateInit (TYPE_1__*,int) ;
 int zfs_zcalloc ;
 int zfs_zcfree ;

int
z_compress_level(void *dst, size_t *dstlen, const void *src, size_t srclen,
    int level)
{

 z_stream zs;
 int err;

 bzero(&zs, sizeof (zs));
 zs.next_in = (uchar_t *)src;
 zs.avail_in = srclen;
 zs.next_out = dst;
 zs.avail_out = *dstlen;
 zs.zalloc = zfs_zcalloc;
 zs.zfree = zfs_zcfree;

 if ((err = deflateInit(&zs, level)) != Z_OK)
  return (err);

 if ((err = deflate(&zs, Z_FINISH)) != Z_STREAM_END) {
  (void) deflateEnd(&zs);
  return (err == Z_OK ? Z_BUF_ERROR : err);
 }

 *dstlen = zs.total_out;
 return (deflateEnd(&zs));
}
