
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ off_t ;
typedef scalar_t__ CORE_ADDR ;


 int O_RDONLY ;
 int PATH_MAX ;
 int SEEK_SET ;
 int close (int) ;
 int inferior_pid ;
 scalar_t__ lseek (int,scalar_t__,int ) ;
 int open (char*,int ) ;
 int read (int,char*,unsigned int) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int
fbsd_read_auxv (CORE_ADDR offset, char *myaddr, unsigned int len)
{
  char filename[PATH_MAX];
  int fd, n;

  snprintf (filename, sizeof filename, "/proc/%d/auxv", inferior_pid);

  fd = open (filename, O_RDONLY);
  if (fd < 0)
    return -1;

  if (offset != (CORE_ADDR) 0
      && lseek (fd, (off_t) offset, SEEK_SET) != (off_t) offset)
    n = -1;
  else
    n = read (fd, myaddr, len);

  close (fd);

  return n;
}
