
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DL_OK_ACK_SIZE ;
 int recv_ack (int,int ,char const*,char*,char*,int *) ;

__attribute__((used)) static int
dlokack(int fd, const char *what, char *bufp, char *ebuf)
{

 return (recv_ack(fd, DL_OK_ACK_SIZE, what, bufp, ebuf, ((void*)0)));
}
