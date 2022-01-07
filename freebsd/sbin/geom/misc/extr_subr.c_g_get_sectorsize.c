
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int g_close (int) ;
 int g_open (char const*,int ) ;
 int g_sectorsize (int) ;

unsigned int
g_get_sectorsize(const char *name)
{
 ssize_t sectorsize;
 int fd;

 fd = g_open(name, 0);
 if (fd == -1)
  return (0);
 sectorsize = g_sectorsize(fd);
 if (sectorsize == -1)
  sectorsize = 0;
 (void)g_close(fd);
 return ((unsigned int)sectorsize);
}
