
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct open_file {struct devdesc* f_devdata; } ;
struct devdesc {int d_unit; } ;


 int host_close (int ) ;

__attribute__((used)) static int
hostdisk_close(struct open_file *f)
{
 struct devdesc *desc = f->f_devdata;

 host_close(desc->d_unit);
 return (0);
}
