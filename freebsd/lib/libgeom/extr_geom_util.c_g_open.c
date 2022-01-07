
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 char* g_device_path_open (char const*,int*,int) ;

int
g_open(const char *name, int dowrite)
{
 char *path;
 int fd;

 path = g_device_path_open(name, &fd, dowrite);
 if (path != ((void*)0))
  free(path);
 return (fd);
}
