
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct open_file {struct ofw_devdesc* f_devdata; } ;
struct ofw_devdesc {int d_handle; } ;


 int OF_close (int ) ;
 struct ofw_devdesc* kdp ;

__attribute__((used)) static int
ofwd_close(struct open_file *f)
{
 struct ofw_devdesc *dev = f->f_devdata;

 if (dev == kdp) {

  OF_close(dev->d_handle);

  kdp = ((void*)0);
 }
 return (0);
}
