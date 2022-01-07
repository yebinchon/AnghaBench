
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct open_file {scalar_t__ f_devdata; } ;
struct devdesc {scalar_t__ d_unit; } ;


 int ENXIO ;

__attribute__((used)) static int
md_close(struct open_file *f)
{
 struct devdesc *dev;

 dev = (struct devdesc *)(f->f_devdata);
 return ((dev->d_unit != 0) ? ENXIO : 0);
}
