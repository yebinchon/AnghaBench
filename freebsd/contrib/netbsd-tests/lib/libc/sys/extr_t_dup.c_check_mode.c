
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_mode; } ;


 int ATF_REQUIRE (int) ;
 int O_CLOEXEC ;
 int O_CREAT ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_WRONLY ;
 size_t __arraycount (int*) ;
 int atf_tc_fail (char*) ;
 int close (int) ;
 int dup (int) ;
 int dup2 (int,int) ;
 int dup3 (int,int,int ) ;
 scalar_t__ fstat (int,struct stat*) ;
 int memset (struct stat*,int ,int) ;
 int open (char*,int,...) ;
 int path ;
 int unlink (int ) ;

__attribute__((used)) static void
check_mode(bool _dup, bool _dup2, bool _dup3)
{
 int mode[3] = { O_RDONLY, O_WRONLY, O_RDWR };
 int perm[5] = { 0700, 0400, 0600, 0444, 0666 };
 struct stat st, st1;
 int fd, fd1, fd2;
 size_t i, j;





 for (i = 0; i < __arraycount(mode); i++) {

  for (j = 0; j < __arraycount(perm); j++) {

   fd1 = open(path, mode[i] | O_CREAT, perm[j]);
   fd2 = open("/etc/passwd", O_RDONLY);

   ATF_REQUIRE(fd1 >= 0);
   ATF_REQUIRE(fd2 >= 0);

   if (_dup != 0)
    fd = dup(fd1);
   else if (_dup2 != 0)
    fd = dup2(fd1, fd2);
   else if (_dup3 != 0)
    fd = dup3(fd1, fd2, O_CLOEXEC);
   else {
    fd = -1;
   }

   ATF_REQUIRE(fd >= 0);

   (void)memset(&st, 0, sizeof(struct stat));
   (void)memset(&st1, 0, sizeof(struct stat));

   ATF_REQUIRE(fstat(fd, &st) == 0);
   ATF_REQUIRE(fstat(fd1, &st1) == 0);

   if (st.st_mode != st1.st_mode)
    atf_tc_fail("invalid mode");

   (void)close(fd);
   (void)close(fd1);
   (void)close(fd2);
   (void)unlink(path);
  }
 }
}
