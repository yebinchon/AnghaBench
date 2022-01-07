
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ut_name; } ;
struct tarfile {TYPE_1__ tf_hdr; } ;
struct open_file {scalar_t__ f_fsdata; } ;
struct dirent {int d_reclen; int d_name; int d_type; scalar_t__ d_fileno; } ;


 int DT_REG ;
 int EBADF ;
 int ENOENT ;
 int memcpy (int ,int ,int) ;
 int package ;
 struct tarfile* scan_tarfile (int ,int *) ;

__attribute__((used)) static int
pkg_readdir(struct open_file *f, struct dirent *d)
{
 struct tarfile *tf;

 tf = (struct tarfile *)f->f_fsdata;
 if (tf != ((void*)0))
  return (EBADF);

 tf = scan_tarfile(package, ((void*)0));
 if (tf == ((void*)0))
  return (ENOENT);

 d->d_fileno = 0;
 d->d_reclen = sizeof(*d);
 d->d_type = DT_REG;
 memcpy(d->d_name, tf->tf_hdr.ut_name, sizeof(d->d_name));
 return (0);
}
