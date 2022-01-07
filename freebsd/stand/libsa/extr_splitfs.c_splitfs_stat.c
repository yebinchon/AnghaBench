
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
struct split_file {int curfd; } ;
struct open_file {scalar_t__ f_fsdata; } ;


 int fstat (int ,struct stat*) ;

__attribute__((used)) static int
splitfs_stat(struct open_file *f, struct stat *sb)
{
    int result;
    struct split_file *sf = (struct split_file *)f->f_fsdata;


    if ((result = fstat(sf->curfd, sb)) == 0)
 sb->st_size = -1;
    return (result);
}
