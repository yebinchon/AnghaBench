
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int buf ;


 int O_RDONLY ;
 int STDOUT_FILENO ;
 int close (int) ;
 int fflush (int ) ;
 int open (char const*,int ) ;
 int read (int,char*,int) ;
 int stdout ;
 int write (int ,char*,int ) ;

__attribute__((used)) static void
resp_copy(const char *filename)
{
 char buf[4096];
 ssize_t sz;
 int fd;

 if ((fd = open(filename, O_RDONLY)) != -1) {
  fflush(stdout);
  while ((sz = read(fd, buf, sizeof(buf))) > 0)
   write(STDOUT_FILENO, buf, sz);
  close(fd);
 }
}
