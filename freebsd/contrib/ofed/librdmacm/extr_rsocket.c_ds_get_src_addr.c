
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sin_port; } ;
union socket_addr {TYPE_1__ sin; int sa; } ;
struct sockaddr {int sa_family; } ;
struct rsocket {int udp_sock; } ;
typedef int socklen_t ;
typedef int __be16 ;


 int SOCK_DGRAM ;
 int close (int) ;
 int connect (int,struct sockaddr const*,int) ;
 int getsockname (int,int *,int*) ;
 int rs_any_addr (union socket_addr*) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static int ds_get_src_addr(struct rsocket *rs,
      const struct sockaddr *dest_addr, socklen_t dest_len,
      union socket_addr *src_addr, socklen_t *src_len)
{
 int sock, ret;
 __be16 port;

 *src_len = sizeof(*src_addr);
 ret = getsockname(rs->udp_sock, &src_addr->sa, src_len);
 if (ret || !rs_any_addr(src_addr))
  return ret;

 port = src_addr->sin.sin_port;
 sock = socket(dest_addr->sa_family, SOCK_DGRAM, 0);
 if (sock < 0)
  return sock;

 ret = connect(sock, dest_addr, dest_len);
 if (ret)
  goto out;

 *src_len = sizeof(*src_addr);
 ret = getsockname(sock, &src_addr->sa, src_len);
 src_addr->sin.sin_port = port;
out:
 close(sock);
 return ret;
}
