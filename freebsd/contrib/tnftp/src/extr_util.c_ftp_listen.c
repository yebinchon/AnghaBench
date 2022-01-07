
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int listen (int,int) ;
 int setupsockbufsize (int) ;

int
ftp_listen(int sock, int backlog)
{

 setupsockbufsize(sock);
 return (listen(sock, backlog));
}
