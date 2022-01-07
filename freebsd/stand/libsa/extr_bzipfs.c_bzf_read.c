
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct open_file {scalar_t__ f_fsdata; } ;
struct TYPE_2__ {size_t avail_out; scalar_t__ avail_in; void* next_out; } ;
struct bz_file {int bzf_endseen; TYPE_1__ bzf_bzstream; } ;


 int BZ2_bzDecompress (TYPE_1__*) ;
 int BZ_OK ;
 int BZ_STREAM_END ;
 int EIO ;
 int bzf_fill (struct bz_file*) ;
 int printf (char*,...) ;

__attribute__((used)) static int
bzf_read(struct open_file *f, void *buf, size_t size, size_t *resid)
{
    struct bz_file *bzf = (struct bz_file *)f->f_fsdata;
    int error;

    bzf->bzf_bzstream.next_out = buf;
    bzf->bzf_bzstream.avail_out = size;

    while (bzf->bzf_bzstream.avail_out && bzf->bzf_endseen == 0) {
 if ((bzf->bzf_bzstream.avail_in == 0) && (bzf_fill(bzf) == -1)) {
     printf("bzf_read: fill error\n");
     return(EIO);
 }
 if (bzf->bzf_bzstream.avail_in == 0) {
     printf("bzf_read: unexpected EOF\n");
     if (bzf->bzf_bzstream.avail_out == size)
  return(EIO);
     break;
 }

 error = BZ2_bzDecompress(&bzf->bzf_bzstream);
 if (error == BZ_STREAM_END) {
     bzf->bzf_endseen = 1;
     break;
 }
 if (error != BZ_OK) {
     printf("bzf_read: BZ2_bzDecompress returned %d\n", error);
     return(EIO);
 }
    }
    if (resid != ((void*)0))
 *resid = bzf->bzf_bzstream.avail_out;
    return(0);
}
