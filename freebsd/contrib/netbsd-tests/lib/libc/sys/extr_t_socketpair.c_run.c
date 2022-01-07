
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE (int) ;
 int FD_CLOEXEC ;
 int F_GETFD ;
 int F_GETFL ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int SOCK_CLOEXEC ;
 int SOCK_NONBLOCK ;
 int close (int) ;
 int closefrom (int) ;
 int connected (int) ;
 int fcntl (int,int ) ;
 int open (char*,int ) ;
 scalar_t__ socketpair (int,int,int ,int*) ;

__attribute__((used)) static void
run(int domain, int type, int flags)
{
 int fd[2], i;

 while ((i = open("/", O_RDONLY)) < 3)
  ATF_REQUIRE(i != -1);




 ATF_REQUIRE(closefrom(3) != -1);


 ATF_REQUIRE(socketpair(domain, type | flags, 0, fd) == 0);

 ATF_REQUIRE(fd[0] == 3);
 ATF_REQUIRE(fd[1] == 4);

 connected(fd[0]);
 connected(fd[1]);

 if (flags & SOCK_CLOEXEC) {
  ATF_REQUIRE((fcntl(fd[0], F_GETFD) & FD_CLOEXEC) != 0);
  ATF_REQUIRE((fcntl(fd[1], F_GETFD) & FD_CLOEXEC) != 0);
 } else {
  ATF_REQUIRE((fcntl(fd[0], F_GETFD) & FD_CLOEXEC) == 0);
  ATF_REQUIRE((fcntl(fd[1], F_GETFD) & FD_CLOEXEC) == 0);
 }

 if (flags & SOCK_NONBLOCK) {
  ATF_REQUIRE((fcntl(fd[0], F_GETFL) & O_NONBLOCK) != 0);
  ATF_REQUIRE((fcntl(fd[1], F_GETFL) & O_NONBLOCK) != 0);
 } else {
  ATF_REQUIRE((fcntl(fd[0], F_GETFL) & O_NONBLOCK) == 0);
  ATF_REQUIRE((fcntl(fd[1], F_GETFL) & O_NONBLOCK) == 0);
 }

 ATF_REQUIRE(close(fd[0]) != -1);
 ATF_REQUIRE(close(fd[1]) != -1);
}
