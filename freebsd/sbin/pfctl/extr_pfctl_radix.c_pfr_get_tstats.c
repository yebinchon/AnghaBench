
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfr_tstats {int dummy; } ;
struct pfr_table {int dummy; } ;
struct pfioc_table {int pfrio_flags; int pfrio_esize; int pfrio_size; struct pfr_tstats* pfrio_buffer; struct pfr_table pfrio_table; } ;


 int DIOCRGETTSTATS ;
 int EINVAL ;
 int bzero (struct pfioc_table*,int) ;
 int dev ;
 int errno ;
 scalar_t__ ioctl (int ,int ,struct pfioc_table*) ;

int
pfr_get_tstats(struct pfr_table *filter, struct pfr_tstats *tbl, int *size,
 int flags)
{
 struct pfioc_table io;

 if (size == ((void*)0) || *size < 0 || (*size && tbl == ((void*)0))) {
  errno = EINVAL;
  return (-1);
 }
 bzero(&io, sizeof io);
 io.pfrio_flags = flags;
 if (filter != ((void*)0))
  io.pfrio_table = *filter;
 io.pfrio_buffer = tbl;
 io.pfrio_esize = sizeof(*tbl);
 io.pfrio_size = *size;
 if (ioctl(dev, DIOCRGETTSTATS, &io))
  return (-1);
 *size = io.pfrio_size;
 return (0);
}
