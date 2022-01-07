
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct open_file {scalar_t__ f_devdata; } ;
struct disk_devdesc {int dummy; } ;


 int disk_close (struct disk_devdesc*) ;

__attribute__((used)) static int
beri_cfi_disk_close(struct open_file *f)
{
 struct disk_devdesc *dev;

 dev = (struct disk_devdesc *)f->f_devdata;
 return (disk_close(dev));
}
