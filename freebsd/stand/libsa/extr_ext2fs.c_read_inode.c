
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct open_file {int f_devdata; TYPE_1__* f_dev; scalar_t__ f_fsdata; } ;
struct ext2dinode {int dummy; } ;
struct file {int* f_blkno; int f_buf_blkno; scalar_t__ f_seekp; struct ext2dinode f_di; int f_bg; struct ext2fs* f_fs; } ;
struct ext2fs {size_t fs_bsize; } ;
typedef int ino_t ;
struct TYPE_2__ {int (* dv_strategy ) (int ,int ,int ,size_t,char*,size_t*) ;} ;


 int EIO ;
 int EXT2_NIADDR ;
 int F_READ ;
 int free (char*) ;
 size_t ino_to_bo (struct ext2fs*,int ) ;
 int ino_to_db (struct ext2fs*,int ,int ) ;
 char* malloc (size_t) ;
 int stub1 (int ,int ,int ,size_t,char*,size_t*) ;
 int twiddle (int) ;

__attribute__((used)) static int
read_inode(ino_t inumber, struct open_file *f)
{
 struct file *fp = (struct file *)f->f_fsdata;
 struct ext2fs *fs = fp->f_fs;
 struct ext2dinode *dp;
 char *buf;
 size_t rsize;
 int level, error = 0;




 buf = malloc(fs->fs_bsize);
 twiddle(1);
 error = (f->f_dev->dv_strategy)(f->f_devdata, F_READ,
     ino_to_db(fs, fp->f_bg, inumber), fs->fs_bsize, buf, &rsize);
 if (error)
  goto out;
 if (rsize != fs->fs_bsize) {
  error = EIO;
  goto out;
 }

 dp = (struct ext2dinode *)buf;
 fp->f_di = dp[ino_to_bo(fs, inumber)];


 for (level = 0; level < EXT2_NIADDR; level++)
  fp->f_blkno[level] = -1;
 fp->f_buf_blkno = -1;
 fp->f_seekp = 0;

out:
 free(buf);
 return (error);
}
