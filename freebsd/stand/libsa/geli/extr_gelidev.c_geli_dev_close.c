
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct open_file {TYPE_3__* f_dev; TYPE_2__* f_devdata; } ;
struct geli_devdesc {TYPE_2__* hdesc; } ;
struct TYPE_6__ {int (* dv_close ) (struct open_file*) ;} ;
struct TYPE_4__ {TYPE_3__* d_dev; } ;
struct TYPE_5__ {TYPE_1__ dd; } ;


 int free (struct geli_devdesc*) ;
 int stub1 (struct open_file*) ;

__attribute__((used)) static int
geli_dev_close(struct open_file *f)
{
 struct geli_devdesc *gdesc;







 gdesc = (struct geli_devdesc *)f->f_devdata;
 f->f_devdata = gdesc->hdesc;
 f->f_dev = gdesc->hdesc->dd.d_dev;
 free(gdesc);
 f->f_dev->dv_close(f);
 return (0);
}
