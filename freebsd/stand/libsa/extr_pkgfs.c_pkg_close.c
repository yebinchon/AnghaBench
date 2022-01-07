
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tarfile {scalar_t__ tf_fp; scalar_t__ tf_size; scalar_t__ tf_cachesz; int tf_cache; } ;
struct open_file {scalar_t__ f_fsdata; } ;


 int free (int ) ;

__attribute__((used)) static int
pkg_close(struct open_file *f)
{
 struct tarfile *tf;

 tf = (struct tarfile *)f->f_fsdata;
 if (tf == ((void*)0))
  return (0);




 if (tf->tf_fp == tf->tf_size && tf->tf_cachesz > 0) {
  free(tf->tf_cache);
  tf->tf_cachesz = 0;
 }
 return (0);
}
