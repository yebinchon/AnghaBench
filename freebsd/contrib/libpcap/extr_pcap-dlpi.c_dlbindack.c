
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DL_BIND_ACK_SIZE ;
 int recv_ack (int,int ,char*,char*,char*,int*) ;

__attribute__((used)) static int
dlbindack(int fd, char *bufp, char *ebuf, int *uerror)
{

 return (recv_ack(fd, DL_BIND_ACK_SIZE, "bind", bufp, ebuf, uerror));
}
