
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_close (int) ;
 int g_open_by_ident (char const*,int ,char*,size_t) ;

int
g_get_name(const char *ident, char *name, size_t size)
{
 int fd;

 fd = g_open_by_ident(ident, 0, name, size);
 if (fd == -1)
  return (-1);
 g_close(fd);
 return (0);
}
