
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CREAT ;
 int O_WRONLY ;
 int S_IRUSR ;
 int S_IWUSR ;
 int close (int) ;
 int open (char const*,int,int) ;

int
create_file(const char *file)
{
 int fd;

 fd = open(file, O_WRONLY | O_CREAT, S_IRUSR | S_IWUSR);
 if (fd < 0) {
  return -1;
 }
 return close(fd);
}
