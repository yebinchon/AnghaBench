
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_sock_port (int,int ) ;

int
get_peer_port(int sock)
{
 return get_sock_port(sock, 0);
}
