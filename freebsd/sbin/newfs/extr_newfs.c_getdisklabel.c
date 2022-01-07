
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct disklabel {int dummy; } ;
struct TYPE_2__ {int d_fd; } ;


 scalar_t__ BBSIZE ;
 int MAXPARTITIONS ;
 scalar_t__ bootarea ;
 scalar_t__ bsd_disklabel_le_dec (scalar_t__,struct disklabel*,int ) ;
 TYPE_1__ disk ;
 scalar_t__ disktype ;
 int err (int,char*) ;
 int errx (int,char*) ;
 struct disklabel* getdiskbyname (scalar_t__) ;
 scalar_t__ is_file ;
 scalar_t__ read (int ,scalar_t__,scalar_t__) ;
 int sectorsize ;

struct disklabel *
getdisklabel(void)
{
 static struct disklabel lab;
 struct disklabel *lp;

 if (is_file) {
  if (read(disk.d_fd, bootarea, BBSIZE) != BBSIZE)
   err(4, "cannot read bootarea");
  if (bsd_disklabel_le_dec(
      bootarea + (0 +
    1 * sectorsize),
      &lab, MAXPARTITIONS))
   errx(1, "no valid label found");

  lp = &lab;
  return &lab;
 }

 if (disktype) {
  lp = getdiskbyname(disktype);
  if (lp != ((void*)0))
   return (lp);
 }
 return (((void*)0));
}
