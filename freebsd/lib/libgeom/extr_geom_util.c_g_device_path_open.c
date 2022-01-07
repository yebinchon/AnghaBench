
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EFTYPE ;
 int O_RDONLY ;
 int O_RDWR ;
 int _PATH_DEV ;
 int asprintf (char**,char*,int ,char const*) ;
 int close (int) ;
 int errno ;
 int free (char*) ;
 int g_sectorsize (int) ;
 int open (char const*,int ) ;
 char* strdup (char const*) ;

__attribute__((used)) static char *
g_device_path_open(const char *devpath, int *fdp, int dowrite)
{
 char *path;
 int fd;


 if (fdp != ((void*)0))
  *fdp = -1;


 fd = open(devpath, dowrite ? O_RDWR : O_RDONLY);
 if (fd != -1) {
  if ((path = strdup(devpath)) == ((void*)0)) {
   close(fd);
   return (((void*)0));
  }
  goto fd_ok;
 }


 if (*devpath == '/')
  return (((void*)0));

 asprintf(&path, "%s%s", _PATH_DEV, devpath);
 if (path == ((void*)0))
  return (((void*)0));
 fd = open(path, dowrite ? O_RDWR : O_RDONLY);
 if (fd == -1) {
  free(path);
  return (((void*)0));
 }

fd_ok:



 if (g_sectorsize(fd) == -1) {
  free(path);
  close(fd);
  errno = EFTYPE;
  return (((void*)0));
 }
 if (fdp != ((void*)0))
  *fdp = fd;
 else
  close(fd);
 return (path);
}
