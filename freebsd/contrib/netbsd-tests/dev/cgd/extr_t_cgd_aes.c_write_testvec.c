
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct testvec {int blkno; int ptxt; } ;
typedef int ssize_t ;


 int EDOM ;
 int SECSIZE ;
 int SEEK_SET ;
 int errno ;
 scalar_t__ rump_sys_lseek (int,int,int ) ;
 int rump_sys_write (int,int ,int) ;

__attribute__((used)) static int
write_testvec(int cgdfd, const struct testvec *tv)
{
 ssize_t written;

 if (rump_sys_lseek(cgdfd, tv->blkno * SECSIZE, SEEK_SET) < 0)
  return -1;

 written = rump_sys_write(cgdfd, tv->ptxt, SECSIZE);
 if (written < 0)
  return -1;
 if (written != SECSIZE) {
  errno = EDOM;
  return -1;
 }

 return 0;
}
