
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct open_file {int * f_devdata; } ;


 int free (int *) ;

__attribute__((used)) static int
zfs_dev_close(struct open_file *f)
{

 free(f->f_devdata);
 f->f_devdata = ((void*)0);
 return (0);
}
