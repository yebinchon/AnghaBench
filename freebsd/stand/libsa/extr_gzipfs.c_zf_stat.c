
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z_file {int zf_rawfd; } ;
struct stat {int st_size; } ;
struct open_file {scalar_t__ f_fsdata; } ;


 int fstat (int ,struct stat*) ;

__attribute__((used)) static int
zf_stat(struct open_file *f, struct stat *sb)
{
    struct z_file *zf = (struct z_file *)f->f_fsdata;
    int result;


    if ((result = fstat(zf->zf_rawfd, sb)) == 0)
 sb->st_size = -1;
    return(result);
}
