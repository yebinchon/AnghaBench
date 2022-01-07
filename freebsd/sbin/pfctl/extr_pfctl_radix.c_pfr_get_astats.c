
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfr_table {int dummy; } ;
struct pfr_astats {int dummy; } ;
struct pfioc_table {int pfrio_flags; int pfrio_esize; int pfrio_size; struct pfr_astats* pfrio_buffer; struct pfr_table pfrio_table; } ;


 int DIOCRGETASTATS ;
 int EINVAL ;
 int bzero (struct pfioc_table*,int) ;
 int dev ;
 int errno ;
 scalar_t__ ioctl (int ,int ,struct pfioc_table*) ;

int
pfr_get_astats(struct pfr_table *tbl, struct pfr_astats *addr, int *size,
    int flags)
{
 struct pfioc_table io;

 if (tbl == ((void*)0) || size == ((void*)0) || *size < 0 ||
     (*size && addr == ((void*)0))) {
  errno = EINVAL;
  return (-1);
 }
 bzero(&io, sizeof io);
 io.pfrio_flags = flags;
 io.pfrio_table = *tbl;
 io.pfrio_buffer = addr;
 io.pfrio_esize = sizeof(*addr);
 io.pfrio_size = *size;
 if (ioctl(dev, DIOCRGETASTATS, &io))
  return (-1);
 *size = io.pfrio_size;
 return (0);
}
