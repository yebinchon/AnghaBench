
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOCK_STREAM ;
 int setup_server (int,int ,int) ;

__attribute__((used)) static int
setup_tcp_server(int domain, int port)
{

 return (setup_server(domain, SOCK_STREAM, port));
}
