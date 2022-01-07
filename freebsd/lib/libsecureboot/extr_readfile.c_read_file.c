
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {size_t st_size; } ;


 int O_RDONLY ;
 int close (int) ;
 int fstat (int,struct stat*) ;
 int open (char const*,int ) ;
 unsigned char* read_fd (int,size_t) ;

unsigned char *
read_file(const char *path, size_t *len)
{
 struct stat st;
 unsigned char *ucp;
 int fd;

     if (len)
  *len = 0;
 if ((fd = open(path, O_RDONLY)) < 0)
  return (((void*)0));
 fstat(fd, &st);
 ucp = read_fd(fd, st.st_size);
 close(fd);
 if (len != ((void*)0) && ucp != ((void*)0))
  *len = st.st_size;
 return (ucp);
}
