
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE_MSG (int,char*,int,int,int ) ;
 int errno ;
 int socket (int,int,int) ;
 int strerror (int ) ;

__attribute__((used)) static int
make_socket(int domain, int type, int protocol)
{
 int sock;

 sock = socket(domain, type, protocol);
 ATF_REQUIRE_MSG(sock != -1, "socket(%d, %d, 0) failed: %s",
     domain, type, strerror(errno));

 return (sock);
}
