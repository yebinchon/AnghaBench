
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u_long ;
typedef int u_int ;
struct open_file {scalar_t__ f_devdata; } ;
struct geli_devdesc {TYPE_1__* gdev; } ;
struct g_eli_metadata {int md_sectorsize; int md_provsize; } ;
struct TYPE_2__ {struct g_eli_metadata md; } ;




 int ENOTTY ;

__attribute__((used)) static int
geli_dev_ioctl(struct open_file *f, u_long cmd, void *data)
{
 struct geli_devdesc *gdesc;
 struct g_eli_metadata *md;

 gdesc = (struct geli_devdesc *)f->f_devdata;
 md = &gdesc->gdev->md;

 switch (cmd) {
 case 128:
  *(u_int *)data = md->md_sectorsize;
  break;
 case 129:
  *(uint64_t *)data = md->md_sectorsize * md->md_provsize;
  break;
 default:
  return (ENOTTY);
 }

 return (0);
}
