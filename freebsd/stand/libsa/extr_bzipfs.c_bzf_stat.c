
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
struct open_file {scalar_t__ f_fsdata; } ;
struct bz_file {int bzf_rawfd; } ;


 int fstat (int ,struct stat*) ;

__attribute__((used)) static int
bzf_stat(struct open_file *f, struct stat *sb)
{
    struct bz_file *bzf = (struct bz_file *)f->f_fsdata;
    int result;


    if ((result = fstat(bzf->bzf_rawfd, sb)) == 0)
 sb->st_size = -1;
    return(result);
}
