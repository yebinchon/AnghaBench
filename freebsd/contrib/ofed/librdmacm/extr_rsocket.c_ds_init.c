
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsocket {scalar_t__ udp_sock; scalar_t__ epfd; } ;


 int SOCK_DGRAM ;
 scalar_t__ epoll_create (int) ;
 scalar_t__ socket (int,int ,int ) ;

__attribute__((used)) static int ds_init(struct rsocket *rs, int domain)
{
 rs->udp_sock = socket(domain, SOCK_DGRAM, 0);
 if (rs->udp_sock < 0)
  return rs->udp_sock;

 rs->epfd = epoll_create(2);
 if (rs->epfd < 0)
  return rs->epfd;

 return 0;
}
