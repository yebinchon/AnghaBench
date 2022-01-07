
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DIR ;


 int O_RDONLY ;
 int close (int) ;
 int * fdopendir (int) ;
 int open (char const*,int ) ;

DIR *
opendir(const char *name)
{
 DIR *dp;
 int fd;

 fd = open(name, O_RDONLY);
 if (fd < 0)
  return ((void*)0);
 dp = fdopendir(fd);
 if (dp == ((void*)0))
  close(fd);
 return dp;
}
