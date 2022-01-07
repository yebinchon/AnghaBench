
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socklen_t ;
typedef int sndbuf ;


 int SOL_SOCKET ;
 int SO_SNDBUF ;
 int TIOCOUTQ ;
 scalar_t__ getsockopt (int,int ,int ,int*,int*) ;
 scalar_t__ ioctl (int,int ,int*) ;

__attribute__((used)) static int wpas_ctrl_iface_throttle(int sock)
{

 socklen_t optlen;
 int sndbuf, outq;

 optlen = sizeof(sndbuf);
 sndbuf = 0;
 if (getsockopt(sock, SOL_SOCKET, SO_SNDBUF, &sndbuf, &optlen) < 0 ||
     ioctl(sock, TIOCOUTQ, &outq) < 0 ||
     sndbuf <= 0 || outq < 0)
  return 0;
 return outq > sndbuf / 2;



}
