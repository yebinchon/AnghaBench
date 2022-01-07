
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socklen_t ;
typedef int optlen ;


 int IPPROTO_TCP ;
 int SOL_SOCKET ;
 int SO_KEEPALIVE ;
 int TCP_KEEPIDLE ;
 int keepalive ;
 int perror (char*) ;
 int printf (char*,...) ;
 int rs_getsockopt (int,int ,int ,int*,int*) ;
 scalar_t__ rs_setsockopt (int,int ,int ,int*,int) ;

__attribute__((used)) static void set_keepalive(int fd)
{
 int optval;
 socklen_t optlen = sizeof(optlen);

 optval = 1;
 if (rs_setsockopt(fd, SOL_SOCKET, SO_KEEPALIVE, &optval, optlen)) {
  perror("rsetsockopt SO_KEEPALIVE");
  return;
 }

 optval = keepalive;
 if (rs_setsockopt(fd, IPPROTO_TCP, TCP_KEEPIDLE, &optval, optlen))
  perror("rsetsockopt TCP_KEEPIDLE");

 if (!(rs_getsockopt(fd, SOL_SOCKET, SO_KEEPALIVE, &optval, &optlen)))
  printf("Keepalive: %s\n", (optval ? "ON" : "OFF"));

 if (!(rs_getsockopt(fd, IPPROTO_TCP, TCP_KEEPIDLE, &optval, &optlen)))
  printf("  time: %i\n", optval);
}
