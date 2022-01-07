
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct open_file {int * f_fsdata; } ;
struct file {int dummy; } ;


 int * dnode_cache_obj ;
 int free (struct file*) ;

__attribute__((used)) static int
zfs_close(struct open_file *f)
{
 struct file *fp = (struct file *)f->f_fsdata;

 dnode_cache_obj = ((void*)0);
 f->f_fsdata = ((void*)0);

 free(fp);
 return (0);
}
