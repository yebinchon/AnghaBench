
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct open_file {int f_fsdata; int * f_dev; } ;


 int CALLBACK (int ,char const*,int *) ;
 int EINVAL ;
 int host_dev ;
 int open ;

__attribute__((used)) static int
host_open(const char *upath, struct open_file *f)
{

 if (f->f_dev != &host_dev)
  return (EINVAL);

 return (CALLBACK(open, upath, &f->f_fsdata));
}
