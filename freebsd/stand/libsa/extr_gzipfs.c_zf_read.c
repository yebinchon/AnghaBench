
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t avail_out; scalar_t__ avail_in; char* msg; void* next_out; } ;
struct z_file {int zf_endseen; TYPE_1__ zf_zstream; } ;
struct open_file {scalar_t__ f_fsdata; } ;


 int EIO ;
 int Z_OK ;
 int Z_STREAM_END ;
 int Z_SYNC_FLUSH ;
 int inflate (TYPE_1__*,int ) ;
 int printf (char*,...) ;
 int zf_fill (struct z_file*) ;

__attribute__((used)) static int
zf_read(struct open_file *f, void *buf, size_t size, size_t *resid)
{
    struct z_file *zf = (struct z_file *)f->f_fsdata;
    int error;

    zf->zf_zstream.next_out = buf;
    zf->zf_zstream.avail_out = size;

    while (zf->zf_zstream.avail_out && zf->zf_endseen == 0) {
 if ((zf->zf_zstream.avail_in == 0) && (zf_fill(zf) == -1)) {
     printf("zf_read: fill error\n");
     return(EIO);
 }
 if (zf->zf_zstream.avail_in == 0) {
     printf("zf_read: unexpected EOF\n");
     if (zf->zf_zstream.avail_out == size)
  return(EIO);
     break;
 }

 error = inflate(&zf->zf_zstream, Z_SYNC_FLUSH);
 if (error == Z_STREAM_END) {
     zf->zf_endseen = 1;
     break;
 }
 if (error != Z_OK) {
     printf("inflate: %s\n", zf->zf_zstream.msg);
     return(EIO);
 }
    }
    if (resid != ((void*)0))
 *resid = zf->zf_zstream.avail_out;
    return(0);
}
