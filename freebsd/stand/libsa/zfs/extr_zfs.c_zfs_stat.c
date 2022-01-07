
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfsmount {int * spa; } ;
struct stat {int dummy; } ;
struct open_file {scalar_t__ f_fsdata; scalar_t__ f_devdata; } ;
struct file {int f_dnode; } ;
typedef int spa_t ;


 int zfs_dnode_stat (int const*,int *,struct stat*) ;

__attribute__((used)) static int
zfs_stat(struct open_file *f, struct stat *sb)
{
 const spa_t *spa = ((struct zfsmount *)f->f_devdata)->spa;
 struct file *fp = (struct file *)f->f_fsdata;

 return (zfs_dnode_stat(spa, &fp->f_dnode, sb));
}
