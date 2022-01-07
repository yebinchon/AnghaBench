
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct testvec {int blkno; int ptxt; } ;


 int SECSIZE ;
 int SEEK_SET ;
 scalar_t__ rump_sys_lseek (int,int,int ) ;
 int rump_sys_write (int,int ,int) ;

__attribute__((used)) static int
write_testvec(int cgdfd, const struct testvec *tv)
{

 if (rump_sys_lseek(cgdfd, tv->blkno * SECSIZE, SEEK_SET) < 0)
  return -1;

 if (rump_sys_write(cgdfd, tv->ptxt, SECSIZE) != SECSIZE)
  return -1;

 return 0;
}
