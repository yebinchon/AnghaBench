
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GGATE_FLAG_RECV ;
 int GGATE_FLAG_SEND ;
 int arc4random () ;
 int handshake (int ) ;
 int recvfd ;
 int sendfd ;
 int token ;

__attribute__((used)) static int
g_gatec_connect(void)
{

 token = arc4random();




 recvfd = handshake(GGATE_FLAG_SEND);
 if (recvfd == -1)
  return (0);




 sendfd = handshake(GGATE_FLAG_RECV);
 if (sendfd == -1)
  return (0);
 return (1);
}
