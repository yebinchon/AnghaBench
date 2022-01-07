
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int ATF_REQUIRE_MSG (int,char*) ;
 int SEEK_SET ;
 int errno ;
 int lockf (int,int,int) ;
 int lseek (int,int,int ) ;

__attribute__((used)) static int
dolock(int fd, int op, off_t lk_off, off_t lk_size)
{
 off_t result;
 int ret;

 result = lseek(fd, lk_off, SEEK_SET);
 if (result == -1) {
  return errno;
 }
 ATF_REQUIRE_MSG(result == lk_off, "lseek to wrong offset");
 ret = lockf(fd, op, lk_size);
 if (ret == -1) {
  return errno;
 }
 return 0;
}
