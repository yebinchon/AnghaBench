
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct open_disk {int table; } ;
struct TYPE_2__ {scalar_t__ d_opendata; } ;
struct disk_devdesc {TYPE_1__ dd; } ;


 int DPRINTF (char*,int ,struct open_disk*) ;
 int disk_fmtdev (struct disk_devdesc*) ;
 int free (struct open_disk*) ;
 int ptable_close (int ) ;

int
disk_close(struct disk_devdesc *dev)
{
 struct open_disk *od;

 od = (struct open_disk *)dev->dd.d_opendata;
 DPRINTF("%s closed => %p", disk_fmtdev(dev), od);
 ptable_close(od->table);
 free(od);
 return (0);
}
