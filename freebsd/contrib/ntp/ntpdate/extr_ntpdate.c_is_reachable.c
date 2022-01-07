
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sa; } ;
typedef TYPE_1__ sockaddr_u ;
typedef int SOCKET ;


 int AF (TYPE_1__*) ;
 int SOCKLEN (TYPE_1__*) ;
 int SOCK_DGRAM ;
 int closesocket (int) ;
 scalar_t__ connect (int,int *,int ) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static int
is_reachable (sockaddr_u *dst)
{
 SOCKET sockfd;

 sockfd = socket(AF(dst), SOCK_DGRAM, 0);
 if (sockfd == -1) {
  return 0;
 }

 if (connect(sockfd, &dst->sa, SOCKLEN(dst))) {
  closesocket(sockfd);
  return 0;
 }
 closesocket(sockfd);
 return 1;
}
