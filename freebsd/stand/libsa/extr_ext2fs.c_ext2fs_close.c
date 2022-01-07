
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct open_file {void* f_fsdata; } ;
struct file {struct file* f_fs; struct file* f_bg; struct file* f_buf; struct file** f_blk; } ;


 int EXT2_NIADDR ;
 int free (struct file*) ;

__attribute__((used)) static int
ext2fs_close(struct open_file *f)
{
 struct file *fp = (struct file *)f->f_fsdata;
 int level;

 f->f_fsdata = (void *)0;
 if (fp == (struct file *)0)
  return (0);

 for (level = 0; level < EXT2_NIADDR; level++) {
  if (fp->f_blk[level])
   free(fp->f_blk[level]);
 }
 if (fp->f_buf)
  free(fp->f_buf);
 if (fp->f_bg)
  free(fp->f_bg);
 free(fp->f_fs);
 free(fp);
 return (0);
}
