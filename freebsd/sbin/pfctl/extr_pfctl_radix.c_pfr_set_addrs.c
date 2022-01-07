
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfr_table {int dummy; } ;
struct pfr_addr {int dummy; } ;
struct pfioc_table {int pfrio_flags; int pfrio_esize; int pfrio_size; int pfrio_size2; int pfrio_nadd; int pfrio_ndel; int pfrio_nchange; struct pfr_addr* pfrio_buffer; struct pfr_table pfrio_table; } ;


 int DIOCRSETADDRS ;
 int EINVAL ;
 int bzero (struct pfioc_table*,int) ;
 int dev ;
 int errno ;
 scalar_t__ ioctl (int ,int ,struct pfioc_table*) ;

int
pfr_set_addrs(struct pfr_table *tbl, struct pfr_addr *addr, int size,
    int *size2, int *nadd, int *ndel, int *nchange, int flags)
{
 struct pfioc_table io;

 if (tbl == ((void*)0) || size < 0 || (size && addr == ((void*)0))) {
  errno = EINVAL;
  return (-1);
 }
 bzero(&io, sizeof io);
 io.pfrio_flags = flags;
 io.pfrio_table = *tbl;
 io.pfrio_buffer = addr;
 io.pfrio_esize = sizeof(*addr);
 io.pfrio_size = size;
 io.pfrio_size2 = (size2 != ((void*)0)) ? *size2 : 0;
 if (ioctl(dev, DIOCRSETADDRS, &io))
  return (-1);
 if (nadd != ((void*)0))
  *nadd = io.pfrio_nadd;
 if (ndel != ((void*)0))
  *ndel = io.pfrio_ndel;
 if (nchange != ((void*)0))
  *nchange = io.pfrio_nchange;
 if (size2 != ((void*)0))
  *size2 = io.pfrio_size2;
 return (0);
}
