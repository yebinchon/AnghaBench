
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct print_args {char* prefix; int verbose; struct disk_devdesc* dev; } ;
struct open_disk {int table; } ;
struct TYPE_2__ {scalar_t__ d_opendata; } ;
struct disk_devdesc {TYPE_1__ dd; } ;


 int ptable_iterate (int ,struct print_args*,int ) ;
 int ptable_print ;

int
disk_print(struct disk_devdesc *dev, char *prefix, int verbose)
{
 struct open_disk *od;
 struct print_args pa;


 od = (struct open_disk *)dev->dd.d_opendata;
 pa.dev = dev;
 pa.prefix = prefix;
 pa.verbose = verbose;
 return (ptable_iterate(od->table, &pa, ptable_print));
}
