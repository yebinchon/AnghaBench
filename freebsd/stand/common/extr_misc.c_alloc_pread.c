
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int SEEK_SET ;
 int free (void*) ;
 int lseek (int,int ,int ) ;
 void* malloc (size_t) ;
 int printf (char*,...) ;
 scalar_t__ read (int,void*,size_t) ;

void *
alloc_pread(int fd, off_t off, size_t len)
{
 void *buf;

 buf = malloc(len);
 if (buf == ((void*)0)) {



  return (((void*)0));
 }
 if (lseek(fd, off, SEEK_SET) == -1) {



  free(buf);
  return (((void*)0));
 }
 if ((size_t)read(fd, buf, len) != len) {



  free(buf);
  return (((void*)0));
 }
 return (buf);
}
