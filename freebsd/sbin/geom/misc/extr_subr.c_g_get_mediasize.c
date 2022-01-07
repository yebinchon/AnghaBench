
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int g_close (int) ;
 int g_mediasize (int) ;
 int g_open (char const*,int ) ;

off_t
g_get_mediasize(const char *name)
{
 off_t mediasize;
 int fd;

 fd = g_open(name, 0);
 if (fd == -1)
  return (0);
 mediasize = g_mediasize(fd);
 if (mediasize == -1)
  mediasize = 0;
 (void)g_close(fd);
 return (mediasize);
}
