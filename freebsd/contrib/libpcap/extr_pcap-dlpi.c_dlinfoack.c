
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DL_INFO_ACK_SIZE ;
 int recv_ack (int,int ,char*,char*,char*,int *) ;

__attribute__((used)) static int
dlinfoack(int fd, char *bufp, char *ebuf)
{

 return (recv_ack(fd, DL_INFO_ACK_SIZE, "info", bufp, ebuf, ((void*)0)));
}
