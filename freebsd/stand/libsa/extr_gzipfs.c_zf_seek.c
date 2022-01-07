
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int total_out; } ;
struct z_file {TYPE_1__ zf_zstream; } ;
struct open_file {scalar_t__ f_fsdata; } ;
typedef int off_t ;
typedef int discard ;


 scalar_t__ EINVAL ;


 scalar_t__ errno ;
 int min (int,int) ;
 scalar_t__ zf_read (struct open_file*,char*,int ,int *) ;
 scalar_t__ zf_rewind (struct open_file*) ;

__attribute__((used)) static off_t
zf_seek(struct open_file *f, off_t offset, int where)
{
    struct z_file *zf = (struct z_file *)f->f_fsdata;
    off_t target;
    char discard[16];

    switch (where) {
    case 128:
 target = offset;
 break;
    case 129:
 target = offset + zf->zf_zstream.total_out;
 break;
    default:
 errno = EINVAL;
 return(-1);
    }


    if (target < zf->zf_zstream.total_out && zf_rewind(f) != 0)
 return(-1);


    while (target > zf->zf_zstream.total_out) {
 errno = zf_read(f, discard, min(sizeof(discard),
     target - zf->zf_zstream.total_out), ((void*)0));
 if (errno)
     return(-1);
    }

    return(zf->zf_zstream.total_out);
}
