
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs {struct csum* fs_csp; void* fs_sblockactualloc; } ;
struct csum {int dummy; } ;
typedef void* off_t ;


 int cgsblock (struct fs*,int) ;
 void* dbtob (int ) ;
 int ffs_sbput (int*,struct fs*,void*,int ) ;
 int fsbtodb (struct fs*,int ) ;
 int use_pwrite ;

int
sbput(int devfd, struct fs *fs, int numaltwrite)
{
 struct csum *savedcsp;
 off_t savedactualloc;
 int i, error;

 if ((error = ffs_sbput(&devfd, fs, fs->fs_sblockactualloc,
      use_pwrite)) != 0)
  return (error);
 if (numaltwrite == 0)
  return (0);
 savedactualloc = fs->fs_sblockactualloc;
 savedcsp = fs->fs_csp;
 fs->fs_csp = ((void*)0);
 for (i = 0; i < numaltwrite; i++) {
  fs->fs_sblockactualloc = dbtob(fsbtodb(fs, cgsblock(fs, i)));
  if ((error = ffs_sbput(&devfd, fs, fs->fs_sblockactualloc,
       use_pwrite)) != 0) {
   fs->fs_sblockactualloc = savedactualloc;
   fs->fs_csp = savedcsp;
   return (-1);
  }
 }
 fs->fs_sblockactualloc = savedactualloc;
 fs->fs_csp = savedcsp;
 return (0);
}
