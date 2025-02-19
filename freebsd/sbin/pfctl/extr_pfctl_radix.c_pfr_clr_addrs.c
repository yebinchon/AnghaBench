
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfr_table {int dummy; } ;
struct pfioc_table {int pfrio_flags; int pfrio_ndel; struct pfr_table pfrio_table; } ;


 int DIOCRCLRADDRS ;
 int EINVAL ;
 int bzero (struct pfioc_table*,int) ;
 int dev ;
 int errno ;
 scalar_t__ ioctl (int ,int ,struct pfioc_table*) ;

int
pfr_clr_addrs(struct pfr_table *tbl, int *ndel, int flags)
{
 struct pfioc_table io;

 if (tbl == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }
 bzero(&io, sizeof io);
 io.pfrio_flags = flags;
 io.pfrio_table = *tbl;
 if (ioctl(dev, DIOCRCLRADDRS, &io))
  return (-1);
 if (ndel != ((void*)0))
  *ndel = io.pfrio_ndel;
 return (0);
}
