
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct open_file {TYPE_1__* f_dev; struct devdesc* f_devdata; } ;
struct devdesc {TYPE_1__* d_dev; } ;
struct TYPE_4__ {int (* arch_getdev ) (void**,char const*,char const**) ;} ;
struct TYPE_3__ {int (* dv_open ) (struct open_file*,struct devdesc*) ;scalar_t__ dv_type; } ;


 scalar_t__ DEVT_DISK ;
 TYPE_2__ archsw ;
 int free (struct devdesc*) ;
 int geli_probe_and_attach (struct open_file*) ;
 int stub1 (void**,char const*,char const**) ;
 int stub2 (struct open_file*,struct devdesc*) ;

int
devopen(struct open_file *f, const char *fname, const char **file)
{
 struct devdesc *dev;
 int result;

 result = archsw.arch_getdev((void **)&dev, fname, file);
 if (result)
  return (result);


 f->f_dev = dev->d_dev;
 f->f_devdata = dev;
 result = dev->d_dev->dv_open(f, dev);
 if (result != 0) {
  f->f_devdata = ((void*)0);
  free(dev);
  return (result);
 }
 return (0);
}
