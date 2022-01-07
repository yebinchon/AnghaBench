
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {int s; } ;
struct skt {int len; TYPE_1__ sktaddr; } ;


 scalar_t__ EADDRNOTAVAIL ;
 scalar_t__ UDP_SOCKET_MAX_SENDTO ;
 scalar_t__ errno ;
 int sendto (int,void*,size_t,int ,int *,int ) ;

__attribute__((used)) static int try_send_to(int sock_fd, void *buff, size_t buf_size,
         struct skt *addr_dst)
{
 uint64_t max_count = UDP_SOCKET_MAX_SENDTO;
 int err;

 do {
  err = sendto(sock_fd, buff, buf_size, 0,
        &addr_dst->sktaddr.s,
        addr_dst->len);
  if (err > 0)
   err = 0;
 } while (-1 == err && EADDRNOTAVAIL == errno && --max_count);

 return err;
}
