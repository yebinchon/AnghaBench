
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct open_file {scalar_t__ f_fsdata; } ;
struct TYPE_2__ {int total_out_lo32; } ;
struct bz_file {TYPE_1__ bzf_bzstream; } ;
typedef int off_t ;
typedef int discard ;


 scalar_t__ EINVAL ;
 scalar_t__ EOFFSET ;


 scalar_t__ bzf_read (struct open_file*,char*,int ,int *) ;
 scalar_t__ bzf_rewind (struct open_file*) ;
 scalar_t__ errno ;
 int min (int,int) ;

__attribute__((used)) static off_t
bzf_seek(struct open_file *f, off_t offset, int where)
{
    struct bz_file *bzf = (struct bz_file *)f->f_fsdata;
    off_t target;
    char discard[16];

    switch (where) {
    case 128:
 target = offset;
 break;
    case 129:
 target = offset + bzf->bzf_bzstream.total_out_lo32;
 break;
    default:
 errno = EINVAL;
 return(-1);
    }


    if (target < bzf->bzf_bzstream.total_out_lo32 && bzf_rewind(f) != 0) {
 errno = EOFFSET;
 return -1;
    }


    bzf = (struct bz_file *)f->f_fsdata;


    while (target > bzf->bzf_bzstream.total_out_lo32) {
 errno = bzf_read(f, discard, min(sizeof(discard),
     target - bzf->bzf_bzstream.total_out_lo32), ((void*)0));
 if (errno)
     return(-1);
    }

    return(bzf->bzf_bzstream.total_out_lo32);
}
