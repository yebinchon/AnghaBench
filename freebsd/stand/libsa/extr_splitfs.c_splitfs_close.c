
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct split_file {int curfd; } ;
struct open_file {scalar_t__ f_fsdata; } ;


 int close (int) ;
 int split_file_destroy (struct split_file*) ;

__attribute__((used)) static int
splitfs_close(struct open_file *f)
{
    int fd;
    struct split_file *sf;

    sf = (struct split_file *)f->f_fsdata;
    fd = sf->curfd;
    split_file_destroy(sf);
    return(close(fd));
}
