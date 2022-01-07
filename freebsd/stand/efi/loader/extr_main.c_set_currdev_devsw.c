
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devsw {int dummy; } ;
struct devdesc {int d_unit; struct devsw* d_dev; } ;


 int set_currdev_devdesc (struct devdesc*) ;

__attribute__((used)) static void
set_currdev_devsw(struct devsw *dev, int unit)
{
 struct devdesc currdev;

 currdev.d_dev = dev;
 currdev.d_unit = unit;

 set_currdev_devdesc(&currdev);
}
