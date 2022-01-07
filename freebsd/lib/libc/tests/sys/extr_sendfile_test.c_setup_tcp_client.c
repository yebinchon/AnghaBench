
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOCK_STREAM ;
 int setup_client (int,int ,int) ;

__attribute__((used)) static int
setup_tcp_client(int domain, int port)
{

 return (setup_client(domain, SOCK_STREAM, port));
}
