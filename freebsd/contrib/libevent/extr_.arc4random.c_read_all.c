
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 scalar_t__ read (int,unsigned char*,size_t) ;

__attribute__((used)) static ssize_t
read_all(int fd, unsigned char *buf, size_t count)
{
 size_t numread = 0;
 ssize_t result;

 while (numread < count) {
  result = read(fd, buf+numread, count-numread);
  if (result<0)
   return -1;
  else if (result == 0)
   break;
  numread += result;
 }

 return (ssize_t)numread;
}
