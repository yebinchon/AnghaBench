
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int O_RDONLY ;
 int close (int) ;
 int err (int ,char*,char const*) ;
 int fchdir (int) ;
 int open (char const*,int ) ;

__attribute__((used)) static void
dofchdir(const char *path, const char *errmsg)
{
 int fd;

 fd = open(path, O_RDONLY);
 if (fd == -1)
  err(EXIT_FAILURE, "open %s", errmsg);
 if (fchdir(fd) == -1)
  err(EXIT_FAILURE, "fchdir %s", errmsg);
 close(fd);
}
