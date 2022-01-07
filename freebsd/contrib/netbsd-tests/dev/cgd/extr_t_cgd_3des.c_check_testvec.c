
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct testvec {int blkno; int ctxt; } ;


 int SECSIZE ;
 int SEEK_SET ;
 int free (char*) ;
 scalar_t__ lseek (int,int,int ) ;
 char* malloc (int) ;
 int memcmp (char*,int ,int) ;
 int read (int,char*,int) ;

__attribute__((used)) static int
check_testvec(int dkfd, const struct testvec *tv)
{
 char *buf;
 int res = -1;

 buf = malloc(SECSIZE);
 if (buf == ((void*)0))
  return -1;

 if (lseek(dkfd, tv->blkno * SECSIZE, SEEK_SET) < 0)
  goto fail;

 if (read(dkfd, buf, SECSIZE) != SECSIZE)
  goto fail;

 res = memcmp(buf, tv->ctxt, SECSIZE);
fail:
 free(buf);
 return res;
}
