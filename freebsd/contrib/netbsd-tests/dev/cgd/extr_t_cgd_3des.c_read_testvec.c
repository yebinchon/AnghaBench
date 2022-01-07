
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct testvec {int blkno; int ptxt; } ;


 int SECSIZE ;
 int SEEK_SET ;
 int free (char*) ;
 char* malloc (int) ;
 int memcmp (char*,int ,int) ;
 scalar_t__ rump_sys_lseek (int,int,int ) ;
 int rump_sys_read (int,char*,int) ;

__attribute__((used)) static int
read_testvec(int cgdfd, const struct testvec *tv)
{
 char *buf;
 int res = -1;

 buf = malloc(SECSIZE);
 if (buf == ((void*)0))
  return -1;

 if (rump_sys_lseek(cgdfd, tv->blkno * SECSIZE, SEEK_SET) < 0)
  goto fail;

 if (rump_sys_read(cgdfd, buf, SECSIZE) != SECSIZE)
  goto fail;

 res = memcmp(buf, tv->ptxt, SECSIZE);
fail:
 free(buf);
 return res;
}
