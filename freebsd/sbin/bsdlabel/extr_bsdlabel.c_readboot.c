
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; } ;


 scalar_t__ BBSIZE ;
 int O_RDONLY ;
 int bootarea ;
 int close (int) ;
 int err (int,char*,char*) ;
 int errx (int,char*,char*) ;
 int fstat (int,struct stat*) ;
 int open (char*,int ) ;
 scalar_t__ read (int,int ,scalar_t__) ;
 char* xxboot ;

__attribute__((used)) static void
readboot(void)
{
 int fd;
 struct stat st;

 if (xxboot == ((void*)0))
  xxboot = "/boot/boot";
 fd = open(xxboot, O_RDONLY);
 if (fd < 0)
  err(1, "cannot open %s", xxboot);
 fstat(fd, &st);
 if (st.st_size <= BBSIZE) {
  if (read(fd, bootarea, st.st_size) != st.st_size)
   err(1, "read error %s", xxboot);
  close(fd);
  return;
 }
 errx(1, "boot code %s is wrong size", xxboot);
}
