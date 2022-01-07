
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDONLY ;
 int close (int) ;
 int openp (int ,int,char*,int ,int ,char**) ;
 int source_path ;

int
source_full_path_of (char *filename, char **full_pathname)
{
  int fd;

  fd = openp (source_path, 1, filename, O_RDONLY, 0, full_pathname);
  if (fd < 0)
    {
      *full_pathname = ((void*)0);
      return 0;
    }

  close (fd);
  return 1;
}
