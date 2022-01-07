
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 char* MDXFdChunk (int,char*,int ,int ) ;
 int O_RDONLY ;
 int close (int) ;
 int errno ;
 int open (char const*,int ) ;

char *
MDXFileChunk(const char *filename, char *buf, off_t ofs, off_t len)
{
 char *ret;
 int e, fd;

 fd = open(filename, O_RDONLY);
 if (fd < 0)
  return ((void*)0);
 ret = MDXFdChunk(fd, buf, ofs, len);
 e = errno;
 close (fd);
 errno = e;
 return ret;
}
