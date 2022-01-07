
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int addr ;


 int ATF_REQUIRE (int) ;
 scalar_t__ getpeername (int,struct sockaddr*,int *) ;

__attribute__((used)) static void
connected(int fd)
{
 struct sockaddr_un addr;
 socklen_t len = (socklen_t)sizeof(addr);
 ATF_REQUIRE(getpeername(fd, (struct sockaddr*)(void *)&addr,
     &len) == 0);
}
