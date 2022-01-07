
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct open_file {scalar_t__ f_fsdata; } ;
struct file {scalar_t__ f_seekp; } ;
struct dirent {int d_name; int d_type; } ;
struct direct {scalar_t__ d_reclen; scalar_t__ d_ino; int d_name; int d_type; } ;
typedef scalar_t__ ino_t ;


 scalar_t__ DIP (struct file*,int ) ;
 int ENOENT ;
 int buf_read_file (struct open_file*,char**,size_t*) ;
 int di_size ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int
ufs_readdir(struct open_file *f, struct dirent *d)
{
 struct file *fp = (struct file *)f->f_fsdata;
 struct direct *dp;
 char *buf;
 size_t buf_size;
 int error;




again:
 if (fp->f_seekp >= DIP(fp, di_size))
  return (ENOENT);
 error = buf_read_file(f, &buf, &buf_size);
 if (error)
  return (error);
 dp = (struct direct *)buf;
 fp->f_seekp += dp->d_reclen;
 if (dp->d_ino == (ino_t)0)
  goto again;
 d->d_type = dp->d_type;
 strcpy(d->d_name, dp->d_name);
 return (0);
}
