
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef scalar_t__ ssize_t ;
typedef int buf ;


 int CALLBACK (int ,char*,int ,scalar_t__) ;
 int copyin ;
 scalar_t__ read (int,char*,size_t) ;

ssize_t
userboot_readin(int fd, vm_offset_t va, size_t len)
{
 ssize_t res, s;
 size_t sz;
 char buf[4096];

 res = 0;
 while (len > 0) {
  sz = len;
  if (sz > sizeof(buf))
   sz = sizeof(buf);
  s = read(fd, buf, sz);
  if (s == 0)
   break;
  if (s < 0)
   return (s);
  CALLBACK(copyin, buf, va, s);
  len -= s;
  res += s;
  va += s;
 }
 return (res);
}
