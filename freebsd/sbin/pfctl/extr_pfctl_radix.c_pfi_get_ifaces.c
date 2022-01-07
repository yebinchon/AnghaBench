
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfioc_iface {int pfiio_esize; int pfiio_size; struct pfi_kif* pfiio_buffer; int pfiio_name; } ;
struct pfi_kif {int dummy; } ;


 int DIOCIGETIFACES ;
 int EINVAL ;
 int bzero (struct pfioc_iface*,int) ;
 int dev ;
 int errno ;
 scalar_t__ ioctl (int ,int ,struct pfioc_iface*) ;
 int strlcpy (int ,char const*,int) ;

int
pfi_get_ifaces(const char *filter, struct pfi_kif *buf, int *size)
{
 struct pfioc_iface io;

 if (size == ((void*)0) || *size < 0 || (*size && buf == ((void*)0))) {
  errno = EINVAL;
  return (-1);
 }
 bzero(&io, sizeof io);
 if (filter != ((void*)0))
  if (strlcpy(io.pfiio_name, filter, sizeof(io.pfiio_name)) >=
      sizeof(io.pfiio_name)) {
   errno = EINVAL;
   return (-1);
  }
 io.pfiio_buffer = buf;
 io.pfiio_esize = sizeof(*buf);
 io.pfiio_size = *size;
 if (ioctl(dev, DIOCIGETIFACES, &io))
  return (-1);
 *size = io.pfiio_size;
 return (0);
}
