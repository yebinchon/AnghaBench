
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * next_in; scalar_t__ avail_in; } ;
struct z_file {TYPE_1__ zf_zstream; scalar_t__ zf_endseen; int zf_dataoffset; int zf_rawfd; } ;
struct open_file {scalar_t__ f_fsdata; } ;


 int SEEK_SET ;
 int inflateReset (TYPE_1__*) ;
 int lseek (int ,int ,int ) ;

__attribute__((used)) static int
zf_rewind(struct open_file *f)
{
    struct z_file *zf = (struct z_file *)f->f_fsdata;

    if (lseek(zf->zf_rawfd, zf->zf_dataoffset, SEEK_SET) == -1)
 return(-1);
    zf->zf_zstream.avail_in = 0;
    zf->zf_zstream.next_in = ((void*)0);
    zf->zf_endseen = 0;
    (void)inflateReset(&zf->zf_zstream);

    return(0);
}
