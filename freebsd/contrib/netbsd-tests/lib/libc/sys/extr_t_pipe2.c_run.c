
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE (int) ;
 int ATF_REQUIRE_MSG (int,char*,int ) ;
 int FD_CLOEXEC ;
 int F_GETFD ;
 int F_GETFL ;
 int F_GETNOSIGPIPE ;
 int O_CLOEXEC ;
 int O_NONBLOCK ;
 int O_NOSIGPIPE ;
 int O_RDONLY ;
 int close (int) ;
 int closefrom (int) ;
 int errno ;
 int fcntl (int,int ) ;
 int open (char*,int ) ;
 scalar_t__ pipe2 (int*,int) ;
 int strerror (int ) ;

__attribute__((used)) static void
run(int flags)
{
 int fd[2], i;

 while ((i = open("/", O_RDONLY)) < 3)
  ATF_REQUIRE(i != -1);




 ATF_REQUIRE_MSG(closefrom(3) != -1, "closefrom failed: %s",
     strerror(errno));


 ATF_REQUIRE(pipe2(fd, flags) == 0);

 ATF_REQUIRE(fd[0] == 3);
 ATF_REQUIRE(fd[1] == 4);

 if (flags & O_CLOEXEC) {
  ATF_REQUIRE((fcntl(fd[0], F_GETFD) & FD_CLOEXEC) != 0);
  ATF_REQUIRE((fcntl(fd[1], F_GETFD) & FD_CLOEXEC) != 0);
 } else {
  ATF_REQUIRE((fcntl(fd[0], F_GETFD) & FD_CLOEXEC) == 0);
  ATF_REQUIRE((fcntl(fd[1], F_GETFD) & FD_CLOEXEC) == 0);
 }

 if (flags & O_NONBLOCK) {
  ATF_REQUIRE((fcntl(fd[0], F_GETFL) & O_NONBLOCK) != 0);
  ATF_REQUIRE((fcntl(fd[1], F_GETFL) & O_NONBLOCK) != 0);
 } else {
  ATF_REQUIRE((fcntl(fd[0], F_GETFL) & O_NONBLOCK) == 0);
  ATF_REQUIRE((fcntl(fd[1], F_GETFL) & O_NONBLOCK) == 0);
 }


 if (flags & O_NOSIGPIPE) {
  ATF_REQUIRE(fcntl(fd[0], F_GETNOSIGPIPE) != 0);
  ATF_REQUIRE(fcntl(fd[1], F_GETNOSIGPIPE) != 0);
 } else {
  ATF_REQUIRE(fcntl(fd[0], F_GETNOSIGPIPE) == 0);
  ATF_REQUIRE(fcntl(fd[1], F_GETNOSIGPIPE) == 0);
 }


 ATF_REQUIRE(close(fd[0]) != -1);
 ATF_REQUIRE(close(fd[1]) != -1);
}
