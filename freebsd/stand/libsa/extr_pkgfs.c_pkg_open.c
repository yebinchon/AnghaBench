
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ut_name; } ;
struct tarfile {scalar_t__ tf_fp; TYPE_1__ tf_hdr; } ;
struct open_file {scalar_t__ f_flags; struct tarfile* f_fsdata; } ;


 int EINVAL ;
 int ENXIO ;
 int EPERM ;
 scalar_t__ F_READ ;
 int errno ;
 int * package ;
 struct tarfile* scan_tarfile (int *,struct tarfile*) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int
pkg_open(const char *fn, struct open_file *f)
{
 struct tarfile *tf;

 if (fn == ((void*)0) || f == ((void*)0))
  return (EINVAL);

 if (package == ((void*)0))
  return (ENXIO);





 if (f->f_flags != F_READ)
  return (EPERM);
 while (*fn == '/')
  fn++;





 if (*fn == '\0') {
  f->f_fsdata = ((void*)0);
  return (0);
 }

 tf = scan_tarfile(package, ((void*)0));
 while (tf != ((void*)0)) {
  if (strcmp(fn, tf->tf_hdr.ut_name) == 0) {
   f->f_fsdata = tf;
   tf->tf_fp = 0;
   return (0);
  }
  tf = scan_tarfile(package, tf);
 }
 return (errno);
}
