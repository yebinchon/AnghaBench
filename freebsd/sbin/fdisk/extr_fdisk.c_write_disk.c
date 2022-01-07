
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int off_t ;


 int EINVAL ;
 int fd ;
 scalar_t__ geom_class_available (char*) ;
 scalar_t__ pwrite (int ,void*,scalar_t__,int) ;
 scalar_t__ secsize ;
 int warnx (char*) ;

__attribute__((used)) static int
write_disk(off_t sector, void *buf)
{
 ssize_t wr;






 wr = pwrite(fd, buf, secsize, (sector * 512));
 if (wr == secsize)
  return (0);

 if (geom_class_available("PART") != 0)
  warnx("Failed to write MBR. Try to use gpart(8).");
 else
  warnx("Failed to write sector zero");
 return(EINVAL);
}
