
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfr_table {int dummy; } ;
struct pfioc_table {int pfrio_flags; int pfrio_ndel; struct pfr_table pfrio_table; } ;


 int DIOCRCLRTABLES ;
 int bzero (struct pfioc_table*,int) ;
 int dev ;
 scalar_t__ ioctl (int ,int ,struct pfioc_table*) ;

int
pfr_clr_tables(struct pfr_table *filter, int *ndel, int flags)
{
 struct pfioc_table io;

 bzero(&io, sizeof io);
 io.pfrio_flags = flags;
 if (filter != ((void*)0))
  io.pfrio_table = *filter;
 if (ioctl(dev, DIOCRCLRTABLES, &io))
  return (-1);
 if (ndel != ((void*)0))
  *ndel = io.pfrio_ndel;
 return (0);
}
