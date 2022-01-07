
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int atf_tc_t ;


 int ATF_REQUIRE_EQ (int ,int ) ;
 int FSTEST_ENTER () ;
 int FSTEST_EXIT () ;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int REQUIRE_LIBC (char*,int *) ;
 int RL (int) ;
 size_t getpagesize () ;
 char* malloc (int) ;
 int memcmp (char*,char*,size_t) ;
 int memset (char*,char,int) ;
 int rump_sys_close (int) ;
 int rump_sys_open (char*,int,int) ;
 int rump_sys_pread (int,char*,size_t,int ) ;
 int rump_sys_pwrite (int,char*,int,int) ;

__attribute__((used)) static void
holywrite(const atf_tc_t *tc, const char *mp)
{
 char buf[1024];
 char *b2, *b3;
 size_t therange = getpagesize()+1;
 int fd;

 FSTEST_ENTER();

 RL(fd = rump_sys_open("file", O_RDWR|O_CREAT|O_TRUNC, 0666));

 memset(buf, 'A', sizeof(buf));
 RL(rump_sys_pwrite(fd, buf, 1, getpagesize()));

 memset(buf, 'B', sizeof(buf));
 RL(rump_sys_pwrite(fd, buf, 2, getpagesize()-1));

 REQUIRE_LIBC(b2 = malloc(2 * getpagesize()), ((void*)0));
 REQUIRE_LIBC(b3 = malloc(2 * getpagesize()), ((void*)0));

 RL(rump_sys_pread(fd, b2, therange, 0));

 memset(b3, 0, therange);
 memset(b3 + getpagesize() - 1, 'B', 2);

 ATF_REQUIRE_EQ(memcmp(b2, b3, therange), 0);

 rump_sys_close(fd);
 FSTEST_EXIT();
}
