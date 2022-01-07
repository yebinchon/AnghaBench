
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct vfsoptlist* mnt_optnew; } ;
typedef TYPE_1__ vfs_t ;
struct vfsoptlist {int dummy; } ;


 int vfs_getopt (struct vfsoptlist*,char const*,void**,int *) ;

int
vfs_optionisset(const vfs_t *vfsp, const char *opt, char **argp)
{
 struct vfsoptlist *opts = vfsp->mnt_optnew;
 int error;

 if (opts == ((void*)0))
  return (0);
 error = vfs_getopt(opts, opt, (void **)argp, ((void*)0));
 return (error != 0 ? 0 : 1);
}
