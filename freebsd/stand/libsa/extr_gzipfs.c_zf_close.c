
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z_file {int zf_rawfd; int zf_zstream; } ;
struct open_file {scalar_t__ f_fsdata; } ;


 int close (int ) ;
 int free (struct z_file*) ;
 int inflateEnd (int *) ;

__attribute__((used)) static int
zf_close(struct open_file *f)
{
    struct z_file *zf = (struct z_file *)f->f_fsdata;

    inflateEnd(&(zf->zf_zstream));
    close(zf->zf_rawfd);
    free(zf);
    return(0);
}
