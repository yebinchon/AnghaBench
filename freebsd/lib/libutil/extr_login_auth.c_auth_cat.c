
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int BUFSIZ ;
 int O_CLOEXEC ;
 int O_RDONLY ;
 int close (int) ;
 int fileno (int ) ;
 int open (char const*,int) ;
 int read (int,char*,int) ;
 int sleep (int) ;
 int stdout ;
 int write (int ,char*,int) ;

int
auth_cat(const char *file)
{
  int fd, count;
  char buf[BUFSIZ];

  if ((fd = open(file, O_RDONLY | O_CLOEXEC)) < 0)
    return 0;
  while ((count = read(fd, buf, sizeof(buf))) > 0)
    (void)write(fileno(stdout), buf, count);
  close(fd);
  sleep(5);
  return 1;
}
