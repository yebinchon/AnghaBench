
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlist {int dummy; } ;


 int O_CLOEXEC ;
 int O_RDONLY ;
 int __fdnlist (int,struct nlist*) ;
 int _close (int) ;
 int _open (char const*,int,int ) ;

int
nlist(const char *name, struct nlist *list)
{
 int fd, n;

 fd = _open(name, O_RDONLY | O_CLOEXEC, 0);
 if (fd < 0)
  return (-1);
 n = __fdnlist(fd, list);
 (void)_close(fd);
 return (n);
}
