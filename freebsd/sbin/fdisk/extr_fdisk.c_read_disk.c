
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int off_t ;


 int MAX_SEC_SIZE ;
 int MIN_SEC_SIZE ;
 int fd ;
 int lseek (int ,int,int ) ;
 int read (int ,void*,int) ;
 int secsize ;

__attribute__((used)) static ssize_t
read_disk(off_t sector, void *buf)
{

 lseek(fd, (sector * 512), 0);
 if (secsize == 0)
  for (secsize = MIN_SEC_SIZE; secsize <= MAX_SEC_SIZE;
       secsize *= 2) {

   int size = read(fd, buf, secsize);
   if (size == secsize)

    return secsize;
  }
 else
  return read(fd, buf, secsize);


 return -1;
}
